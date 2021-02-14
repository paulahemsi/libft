/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: phemsi-a <phemsi-a@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/04 23:51:11 by phemsi-a          #+#    #+#             */
/*   Updated: 2021/02/08 21:53:47 by phemsi-a         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_itoa(int n)
{
	char			*string;
	unsigned int	neg;
	unsigned int	number;
	unsigned int	digits;

	if ((neg = ft_isnegative(n)))
		number = -n;
	else
		number = n;
	digits = ft_countdigit(number);
	if (!(string = (char *)malloc(digits + neg + 1)))
		return (NULL);
	if (neg == 1)
	{
		string[0] = '-';
	}
	string[digits + neg] = '\0';
	while (digits > 0)
	{
		string[(digits - 1) + neg] = (number % 10) + '0';
		number /= 10;
		digits--;
	}
	return (string);
}
