/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: banthony <banthony@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/14 00:12:53 by banthony          #+#    #+#             */
/*   Updated: 2015/12/07 14:22:19 by banthony         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char *ptr;

	ptr = NULL;
	if (s1 != 0)
	{
		ptr = (char *)malloc((ft_strlen(s1)) * sizeof(char));
		if (ptr != NULL)
		{
			ft_strcpy(ptr, s1);
		}
		else
			return (NULL);
	}
	return (ptr);
}
