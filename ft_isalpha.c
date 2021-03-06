/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: banthony <banthony@students.42.fr>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/26 13:35:14 by banthony          #+#    #+#             */
/*   Updated: 2017/08/17 00:44:02 by banthony         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** Verifie si l'on a un caractere alphabetique
*/

#include "libft.h"

int	ft_isalpha(int c)
{
	if ((c > 64 && c < 91) || (c > 96 && c < 123))
		return (1);
	else
		return (0);
}
