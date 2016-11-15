/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_push_back.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stvalett <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/14 21:36:37 by stvalett          #+#    #+#             */
/*   Updated: 2016/11/14 21:48:37 by stvalett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_push_back(t_list **alst, t_list *elem)
{
	t_list	*tmp;

	tmp = *alst;
	if (!*alst || !elem)
		return ;
	while (tmp->next)
		tmp = tmp->next;
	tmp->next = elem;
	elem->next = NULL;
}
