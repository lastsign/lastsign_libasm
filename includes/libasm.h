/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ptycho <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/25 18:10:57 by ptycho            #+#    #+#             */
/*   Updated: 2021/01/26 15:20:30 by ptycho           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <stdlib.h>
# include <sys/uio.h>

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

size_t				ft_strlen(const char *str);
char				*ft_strcpy(char *dst, const char *src);
int					ft_strcmp(const char *s1, const char *s2);
char				*ft_strdup(const char *s1);
ssize_t				ft_write(int fd, const void *buf, size_t n);
ssize_t				ft_read(int fd, void *buf, size_t n);

int					ft_list_size(t_list *begin_list);
void				ft_list_push_front(t_list **begin_list, void *data);

#endif
