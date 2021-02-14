/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: phemsi-a <phemsi-a@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/11 18:48:23 by phemsi-a          #+#    #+#             */
/*   Updated: 2021/02/12 12:23:53 by phemsi-a         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_list;
	t_list	*temp;

	new_list = NULL;
	while (lst->next != NULL)
	{
		temp = (t_list *)malloc(sizeof(t_list));
		if (temp == NULL)
		{
			if (new_list != NULL)
			{
				ft_lstiter(new_list, del);
				ft_lstiter(new_list, &ft_lstclear);
			}
			return (NULL);
		}
		temp->content = f(lst->content);
		ft_lstadd_back(new_list, temp);
		lst = lst->next;
	}
	return (new_list);
}
