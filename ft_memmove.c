/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stvalett <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/09 13:12:09 by stvalett          #+#    #+#             */
/*   Updated: 2016/11/09 15:50:44 by stvalett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	char	*tmp;

	tmp = NULL;
	if (len)
	{
		tmp = malloc(len);
		ft_memcpy(tmp, src, len);
		ft_memcpy(dst, tmp, len);
		return (dst);
	}
	else
		return (0);
}
