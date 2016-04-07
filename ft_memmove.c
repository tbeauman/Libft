/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbeauman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/24 16:54:28 by tbeauman          #+#    #+#             */
/*   Updated: 2015/11/24 18:09:14 by tbeauman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	char	*tab;

	tab = (char*)malloc(len);
	if (!tab)
		return (NULL);
	ft_memcpy(tab, src, len);
	ft_memcpy(dst, tab, len);
	return (dst);
}
