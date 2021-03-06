/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: banthony <banthony@students.42.fr>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/12/01 12:55:13 by banthony          #+#    #+#             */
/*   Updated: 2017/08/16 22:12:53 by banthony         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	char			*str;
	unsigned int	i;

	i = 0;
	str = NULL;
	if (s && f)
	{
		str = (char *)ft_memalloc(ft_strlen(s) + 1);
		if (str == NULL)
			return (NULL);
		ft_strcpy(str, s);
		while (str[i])
		{
			str[i] = f(i, str[i]);
			i++;
		}
	}
	return (str);
}
