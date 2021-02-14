/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: phemsi-a <phemsi-a@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/02 03:04:08 by phemsi-a          #+#    #+#             */
/*   Updated: 2021/02/12 23:48:36 by phemsi-a         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	word_count(char const *s, char c)
{
	size_t		words_count;
	size_t		i;

	words_count = 0;
	i = 0;
	while (s[i] != '\0')
	{
		while (s[i] == c && (s[i] != '\0'))
		{
			i++;
		}
		if ((s[i] != c) && (s[i] != '\0'))
		{
			words_count++;
			while ((s[i] != c) && (s[i] != '\0'))
			{
				i++;
			}
		}
	}
	return (words_count);
}

static size_t	sub_len(char const *s, char c)
{
	size_t		length;

	length = 0;
	while ((s[length] != '\0') && (s[length] != c))
	{
		length++;
	}
	return (length);
}

char			**ft_split(char const *s, char c)
{
	char		**str_array;
	size_t		sub_length;
	size_t		i_array;
	size_t		words;
	size_t		i;

	words = word_count(s, c);
	if (!(str_array = (char**)malloc((words + 1) * sizeof(char*))))
		return (NULL);
	i = 0;
	i_array = 0;
	while (s[i] != '\0')
	{
		if (s[i] != c)
		{
			sub_length = sub_len(&s[i], c);
			if (!(str_array[i_array] = ft_substr(s, i, sub_length)))
				return (NULL);
			i_array++;
			i += sub_length - 1;
		}
		i++;
	}
	str_array[i_array] = NULL;
	return (str_array);
}
