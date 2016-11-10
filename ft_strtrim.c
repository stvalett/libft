/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stvalett <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/10 18:35:08 by stvalett          #+#    #+#             */
/*   Updated: 2016/11/10 19:48:24 by stvalett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim(char const *s)
{
	char	*str;
	char const	*start;
	char const	*end;

	str = NULL;
	start = NULL;
	if (!s)
		return (str);
	while (*s)
	{
		if (!(*s == ' ' || *s == '\t' || *s == '\n'))
		{
			start = (start == NULL) ? s : start;
			end = s;
		}
		s++;
	}
	if (start == NULL)
		return (ft_strnew(1));
	str = (char *)malloc(sizeof(*str) * (end - start) + 2);
	if (str == NULL)
		return (NULL);
	s = start;
	while (s <= end)
		*str++ = *s++;
	*str = '\0';
	return (str - (end - start + 1));
}

