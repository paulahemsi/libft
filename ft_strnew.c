/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: phemsi-a <phemsi-a@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/08 11:35:14 by phemsi-a          #+#    #+#             */
/*   Updated: 2021/02/09 20:31:25 by phemsi-a         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnew(size_t size)
{
	char *string;

	string = (char *)malloc((size + 1) * sizeof(char));
	if (string == NULL)
	{
		return (NULL);
	}
	string[size] = '\0';
	ft_strclr(string);
	return (string);
}
