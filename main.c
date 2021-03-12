#include "libasm.h"
#include <stdio.h>
#include <string.h>
#include <errno.h>

int		main(void)
{
	printf("strlen(\"\"): %zd\n", strlen(""));
	printf("ft_strlen(\"\"): %zd\n", ft_strlen(""));

	printf("strlen(\"123\"): %zd\n", strlen("123"));
	printf("ft_strlen(\"123\"): %zd\n", ft_strlen("123"));

	printf("strcpy(malloc(sizeof(char) * 1), \"\"): %s\n", strcpy(malloc(sizeof(char) * 1), ""));
	printf("ft_strcpy(malloc(sizeof(char) * 1), \"\"): %s\n", ft_strcpy(malloc(sizeof(char) * 1), ""));

	printf("strcpy(malloc(sizeof(char) * 4), \"123\"): %s\n", strcpy(malloc(sizeof(char) * 4), "123"));
	printf("ft_strcpy(malloc(sizeof(char) * 4), \"123\"): %s\n", ft_strcpy(malloc(sizeof(char) * 4), "123"));

	printf("strcmp(\"\", \"\"): %d\n", strcmp("", ""));
	printf("ft_strcmp(\"\", \"\"): %d\n", ft_strcmp("", ""));

	printf("strcmp(\"123\", \"123\"): %d\n", strcmp("123", "123"));
	printf("ft_strcmp(\"123\", \"123\"): %d\n", ft_strcmp("123", "123"));

	printf("strdup(\"123\"): %s\n", strdup("123"));
	printf("ft_strdup(\"123\"): %s\n", ft_strdup("123"));

	printf("strdup(\" \"): %s\n", strdup(""));
	printf("ft_strdup(\" \"): %s\n", ft_strdup(""));

	errno = 0;
	printf("ft_write(1, \"Hello World!\\n\", 14): %zd\n", ft_write(1, "Hello World!\n", 14));
	printf("errno: %d\n\n", errno);
	errno = 0;
	printf("ft_write(1, \"Hello World!\\n\", 4): %zd\n", ft_write(1, "Hello World!\n", 4));
	printf("errno: %d\n\n", errno);
	errno = 0;
	printf("ft_write(1, \"Hello World!\\n\", 0): %zd\n", ft_write(1, "Hello World!\n", 0));
	printf("errno: %d\n\n", errno);
	errno = 0;
	printf("ft_write(1, \"Hello World!\\n\", -5): %zd\n", ft_write(1, "Hello World!\n", -5));
	printf("errno: %d\n\n", errno);
	errno = 0;
	printf("ft_write(19, \"Hello World!\\n\", 14): %zd\n", ft_write(19, "Hello World!\n", 14));
	printf("errno: %d\n\n", errno);
	errno = 0;
	printf("ft_write(1, NULL, 14): %zd\n", ft_write(1, NULL, 14));
	printf("errno: %d\n\n", errno);

	printf("BONUSES-----------------------------------------\n");
	printf("%d\n", ft_list_size(NULL));
	t_list *head;
	head = malloc(sizeof(t_list));
	head->data = "Hello";
	head->next = NULL;
	printf("%d\n", ft_list_size(head));
	ft_list_push_front(&head, "123");
	ft_list_push_front(&head, "1");
	ft_list_push_front(&head, "2");
	ft_list_push_front(&head, "3");
	ft_list_push_front(&head, "4");
	t_list *tmp = head;
	while (tmp)
	{
		printf("%s ", tmp->data);
		tmp = tmp->next;
	}
	printf("\n%d\n", ft_list_size(head));
	return (0);
}
