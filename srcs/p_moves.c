/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   p_moves.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alappas <alappas@student.42wolfsburg.de    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/03 20:44:56 by alappas           #+#    #+#             */
/*   Updated: 2023/09/14 11:43:12 by alappas          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"

void	pa_pb(t_stack **stack_dest, t_stack **stack_source)

{
	t_stack	*data;
	t_stack	*head;
	int		index;

	if ((*stack_source) == NULL)
		return ;
	head = (*stack_source)->next;
	index = (*stack_source)->index;
	data = ft_listnew((*stack_source)->data);
	data->next = (*stack_dest);
	free(*stack_source);
	(*stack_source) = head;
	(*stack_dest) = data;
	(*stack_dest)->index = index;
	stack_position(stack_source);
	stack_position(stack_dest);
}

void	pa(t_stack **stack_a, t_stack **stack_b)

{
	pa_pb(stack_a, stack_b);
	ft_printf("pa\n");
}

void	pb(t_stack **stack_a, t_stack **stack_b)

{
	pa_pb(stack_b, stack_a);
	ft_printf("pb\n");
}
