/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stvalett <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/10 19:48:38 by stvalett          #+#    #+#             */
/*   Updated: 2016/11/10 20:08:50 by stvalett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	len_d;
	size_t	len_max;
	size_t	i;

	len_d = ft_strlen(dst);
	len_max = (size - 1) - len_d;
	i = 0;
	if (ft_strlen(dst) < ft_strlen(src))
		return (len_d);
	while (src[i] && i < len_max)
	{
		dst[len_d + i] = src[i];
		i++;
	}
	dst[len_d + i] = '\0';
	return (len_d + i);
}
