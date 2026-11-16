% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, reproduce, [[run(sort, [a], f1), run(sum, [b], f2), run(concat, [a, f2], f3), run(double, [b], f4), run(double, [f4], f5)], [a-[], b-[6, 1, 6, 0]], f5], [24, 4, 24, 0]).
io(2, lineage, [[run(double, [b], f1), run(double, [f1], f2), run(reverse, [a], f3), run(reverse, [f2], f4), run(sort, [f4], f5)], f5], [b]).
io(3, depth, [[run(double, [b], f1), run(sort, [f1], f2), run(concat, [f2, b], f3), run(reverse, [f1], f4)], f4], 2).
io(4, reproduce, [[run(concat, [a, a], f1), run(double, [a], f2)], [a-[6, 5], b-[8, 5]], f2], [12, 10]).
io(5, lineage, [[run(double, [a], f1)], f1], [a]).
io(6, depth, [[run(sum, [a], f1), run(double, [a], f2), run(concat, [a, f1], f3)], f3], 2).
io(7, reproduce, [[run(sum, [b], f1), run(sort, [a], f2), run(sort, [f2], f3)], [a-[2, 1, 1, 8], b-[9, 4, 0, 4]], f3], [1, 1, 2, 8]).
io(8, lineage, [[run(sort, [b], f1), run(concat, [b, b], f2)], f2], [b]).
io(9, depth, [[run(sort, [b], f1), run(double, [f1], f2), run(sum, [f1], f3), run(sort, [f3], f4), run(double, [f4], f5)], f5], 4).
io(10, reproduce, [[run(double, [b], f1), run(concat, [f1, f1], f2), run(sum, [f2], f3), run(concat, [f1, f1], f4), run(concat, [f1, f3], f5)], [a-[3], b-[2, 0]], f5], [4, 0, 8]).
io(11, lineage, [[run(reverse, [a], f1), run(concat, [a, a], f2), run(sort, [b], f3), run(sort, [f3], f4), run(concat, [f4, f1], f5)], f5], [a, b]).
io(12, depth, [[run(double, [a], f1)], f1], 1).
io(13, reproduce, [[run(sum, [b], f1), run(reverse, [f1], f2), run(sort, [b], f3), run(sort, [f3], f4), run(double, [f3], f5)], [a-[4, 9, 7, 3], b-[0, 8, 8, 1]], f5], [0, 2, 16, 16]).
io(14, lineage, [[run(concat, [a, a], f1), run(double, [a], f2)], f2], [a]).
io(15, depth, [[run(sum, [b], f1), run(concat, [f1, f1], f2)], f2], 2).
io(16, reproduce, [[run(reverse, [a], f1), run(sort, [a], f2)], [a-[5, 6, 9, 7], b-[2, 7]], f2], [5, 6, 7, 9]).
io(17, lineage, [[run(double, [a], f1)], f1], [a]).
io(18, depth, [[run(sum, [a], f1), run(reverse, [f1], f2)], f2], 2).
io(19, reproduce, [[run(concat, [b, a], f1), run(sort, [a], f2), run(reverse, [b], f3), run(reverse, [f3], f4)], [a-[7, 7, 2, 9], b-[9, 8, 1, 4]], f4], [9, 8, 1, 4]).
io(20, lineage, [[run(reverse, [b], f1), run(concat, [f1, a], f2), run(sum, [b], f3), run(reverse, [b], f4), run(sum, [f3], f5)], f5], [b]).
io(21, depth, [[run(sort, [b], f1)], f1], 1).
io(22, reproduce, [[run(sort, [a], f1), run(reverse, [a], f2)], [a-[4], b-[]], f2], [4]).
io(23, lineage, [[run(sort, [b], f1)], f1], [b]).
io(24, depth, [[run(sum, [b], f1), run(concat, [f1, a], f2), run(double, [f1], f3)], f3], 2).
io(25, reproduce, [[run(concat, [a, a], f1), run(reverse, [b], f2)], [a-[], b-[9, 4]], f2], [4, 9]).
io(26, lineage, [[run(double, [b], f1), run(double, [b], f2), run(reverse, [f1], f3), run(reverse, [a], f4), run(sum, [f4], f5)], f5], [a]).
io(27, depth, [[run(concat, [b, a], f1), run(reverse, [f1], f2)], f2], 2).
io(28, reproduce, [[run(reverse, [b], f1), run(reverse, [b], f2)], [a-[], b-[4, 8, 2]], f2], [2, 8, 4]).
io(29, lineage, [[run(sort, [a], f1), run(concat, [f1, a], f2), run(sort, [b], f3), run(reverse, [f1], f4)], f4], [a]).
io(30, depth, [[run(sum, [a], f1), run(sum, [b], f2), run(concat, [a, a], f3), run(sort, [f1], f4)], f4], 2).
io(31, reproduce, [[run(concat, [a, a], f1), run(sort, [b], f2)], [a-[], b-[4, 9]], f2], [4, 9]).
io(32, lineage, [[run(reverse, [b], f1), run(sum, [f1], f2)], f2], [b]).
io(33, depth, [[run(double, [b], f1), run(reverse, [b], f2), run(sum, [f2], f3), run(reverse, [f2], f4)], f4], 2).
io(34, reproduce, [[run(reverse, [b], f1), run(reverse, [f1], f2), run(sum, [a], f3), run(double, [a], f4), run(sort, [f3], f5)], [a-[9, 2, 1], b-[8, 5]], f5], [12]).
io(35, lineage, [[run(concat, [a, b], f1)], f1], [a, b]).
io(36, depth, [[run(concat, [b, a], f1), run(concat, [a, f1], f2)], f2], 2).
io(37, reproduce, [[run(double, [a], f1), run(sort, [a], f2), run(concat, [f1, b], f3), run(concat, [f2, f2], f4)], [a-[1], b-[1]], f4], [1, 1]).
io(38, lineage, [[run(concat, [b, b], f1), run(sort, [f1], f2), run(double, [b], f3), run(reverse, [a], f4), run(reverse, [f2], f5)], f5], [b]).
io(39, depth, [[run(concat, [a, b], f1)], f1], 1).
io(40, reproduce, [[run(sum, [a], f1), run(double, [f1], f2), run(reverse, [f1], f3)], [a-[1, 3, 4], b-[]], f3], [8]).
io(41, lineage, [[run(sort, [a], f1), run(sort, [f1], f2), run(double, [a], f3)], f3], [a]).
io(42, depth, [[run(sort, [a], f1), run(sort, [b], f2), run(sum, [a], f3), run(sort, [f3], f4), run(double, [f2], f5)], f5], 2).
io(43, reproduce, [[run(sort, [a], f1), run(concat, [f1, f1], f2), run(sort, [a], f3), run(double, [b], f4), run(concat, [a, f4], f5)], [a-[7, 7, 5], b-[1, 6, 8, 7]], f5], [7, 7, 5, 2, 12, 16, 14]).
io(44, lineage, [[run(reverse, [b], f1), run(sum, [b], f2), run(double, [a], f3)], f3], [a]).
io(45, depth, [[run(sum, [a], f1), run(concat, [f1, a], f2), run(reverse, [b], f3), run(reverse, [b], f4)], f4], 1).
io(46, reproduce, [[run(reverse, [a], f1)], [a-[6], b-[]], f1], [6]).
io(47, lineage, [[run(sort, [b], f1), run(sort, [b], f2), run(concat, [b, f2], f3), run(sum, [f3], f4)], f4], [b]).
io(48, depth, [[run(sum, [a], f1), run(reverse, [f1], f2)], f2], 2).
io(49, reproduce, [[run(sum, [a], f1), run(sort, [b], f2), run(reverse, [a], f3), run(reverse, [b], f4)], [a-[], b-[9, 8, 5]], f4], [5, 8, 9]).
io(50, lineage, [[run(sum, [a], f1), run(sort, [a], f2), run(sort, [b], f3), run(concat, [b, f1], f4), run(double, [a], f5)], f5], [a]).
io(51, depth, [[run(double, [a], f1), run(reverse, [b], f2), run(sum, [f1], f3)], f3], 2).
io(52, reproduce, [[run(concat, [a, a], f1), run(double, [a], f2)], [a-[8, 7, 5, 6], b-[0, 4, 0]], f2], [16, 14, 10, 12]).
io(53, lineage, [[run(double, [b], f1), run(double, [a], f2), run(concat, [a, a], f3), run(reverse, [b], f4), run(concat, [f2, f1], f5)], f5], [a, b]).
io(54, depth, [[run(reverse, [a], f1), run(sort, [f1], f2), run(reverse, [f1], f3), run(sum, [f1], f4), run(reverse, [f2], f5)], f5], 3).
io(55, reproduce, [[run(concat, [b, a], f1), run(double, [b], f2)], [a-[], b-[0, 7, 2]], f2], [0, 14, 4]).
io(56, lineage, [[run(concat, [a, a], f1), run(sum, [f1], f2)], f2], [a]).
io(57, depth, [[run(double, [a], f1), run(double, [f1], f2), run(sum, [b], f3), run(reverse, [b], f4), run(reverse, [f3], f5)], f5], 2).
io(58, reproduce, [[run(reverse, [b], f1)], [a-[4], b-[4, 3, 5, 5]], f1], [5, 5, 3, 4]).
io(59, lineage, [[run(double, [b], f1), run(sort, [b], f2), run(double, [a], f3), run(concat, [f3, f2], f4)], f4], [a, b]).
io(60, depth, [[run(double, [a], f1), run(concat, [f1, b], f2), run(double, [f2], f3)], f3], 3).
io(61, reproduce, [[run(concat, [b, a], f1), run(reverse, [a], f2), run(double, [f2], f3), run(reverse, [f2], f4)], [a-[6, 7], b-[5, 5]], f4], [6, 7]).
io(62, lineage, [[run(sort, [a], f1)], f1], [a]).
io(63, depth, [[run(double, [b], f1), run(concat, [f1, b], f2), run(double, [f1], f3), run(concat, [a, f2], f4), run(concat, [f2, f4], f5)], f5], 4).
io(64, reproduce, [[run(double, [b], f1), run(concat, [b, a], f2), run(sort, [a], f3), run(concat, [f2, f1], f4), run(double, [f1], f5)], [a-[1, 1, 7], b-[7, 2, 6, 2]], f5], [28, 8, 24, 8]).
io(65, lineage, [[run(sum, [a], f1), run(concat, [b, b], f2), run(double, [f2], f3), run(sort, [f3], f4), run(sort, [f1], f5)], f5], [a]).
io(66, depth, [[run(double, [b], f1), run(reverse, [f1], f2), run(double, [f1], f3)], f3], 2).
io(67, reproduce, [[run(double, [b], f1), run(concat, [a, b], f2), run(sort, [b], f3), run(sum, [f3], f4), run(double, [a], f5)], [a-[], b-[4, 6, 6, 5]], f5], []).
io(68, lineage, [[run(sum, [a], f1), run(concat, [b, b], f2), run(reverse, [b], f3), run(concat, [f1, a], f4)], f4], [a]).
io(69, depth, [[run(sort, [b], f1), run(sort, [f1], f2)], f2], 2).
io(70, reproduce, [[run(concat, [b, a], f1), run(concat, [a, f1], f2), run(sum, [f1], f3), run(sum, [f2], f4)], [a-[], b-[5, 2]], f4], [7]).
io(71, lineage, [[run(concat, [b, b], f1), run(reverse, [b], f2), run(sort, [f2], f3), run(concat, [a, f3], f4)], f4], [a, b]).
io(72, depth, [[run(double, [b], f1), run(concat, [b, a], f2), run(reverse, [a], f3), run(sort, [f1], f4), run(double, [b], f5)], f5], 1).
io(73, reproduce, [[run(double, [b], f1), run(concat, [a, f1], f2)], [a-[9, 6], b-[9, 8, 4]], f2], [9, 6, 18, 16, 8]).
io(74, lineage, [[run(reverse, [a], f1), run(sort, [f1], f2), run(concat, [f2, f1], f3), run(reverse, [f2], f4), run(sort, [f3], f5)], f5], [a]).
io(75, depth, [[run(double, [a], f1), run(double, [a], f2)], f2], 1).
io(76, reproduce, [[run(reverse, [b], f1), run(double, [a], f2)], [a-[6, 1], b-[]], f2], [12, 2]).
io(77, lineage, [[run(sort, [b], f1), run(sort, [f1], f2)], f2], [b]).
io(78, depth, [[run(sort, [a], f1), run(sort, [a], f2), run(sum, [f1], f3)], f3], 2).
io(79, reproduce, [[run(double, [b], f1)], [a-[2], b-[7, 0, 7]], f1], [14, 0, 14]).
io(80, lineage, [[run(sum, [b], f1), run(reverse, [f1], f2)], f2], [b]).
io(81, depth, [[run(sum, [a], f1), run(double, [f1], f2)], f2], 2).
io(82, reproduce, [[run(concat, [a, a], f1), run(concat, [a, f1], f2), run(reverse, [a], f3), run(double, [a], f4), run(reverse, [a], f5)], [a-[6, 2, 0, 1], b-[0, 8, 8, 3]], f5], [1, 0, 2, 6]).
io(83, lineage, [[run(sum, [b], f1)], f1], [b]).
io(84, depth, [[run(sort, [a], f1), run(sort, [a], f2), run(sort, [a], f3)], f3], 1).
io(85, reproduce, [[run(reverse, [a], f1), run(reverse, [b], f2)], [a-[8, 0], b-[1, 3]], f2], [3, 1]).
io(86, lineage, [[run(concat, [b, b], f1), run(reverse, [b], f2)], f2], [b]).
io(87, depth, [[run(sort, [b], f1), run(reverse, [f1], f2)], f2], 2).
io(88, reproduce, [[run(double, [a], f1), run(sum, [f1], f2), run(reverse, [f1], f3), run(concat, [a, f1], f4), run(concat, [a, a], f5)], [a-[], b-[2, 8]], f5], []).
io(89, lineage, [[run(double, [a], f1), run(concat, [a, b], f2), run(reverse, [b], f3), run(concat, [b, a], f4)], f4], [a, b]).
io(90, depth, [[run(sum, [b], f1), run(concat, [a, f1], f2)], f2], 2).
io(91, reproduce, [[run(reverse, [a], f1)], [a-[], b-[]], f1], []).
io(92, lineage, [[run(sum, [a], f1)], f1], [a]).
io(93, depth, [[run(sum, [b], f1), run(double, [f1], f2), run(double, [b], f3)], f3], 1).
io(94, reproduce, [[run(concat, [a, a], f1)], [a-[], b-[7]], f1], []).
io(95, lineage, [[run(sum, [a], f1)], f1], [a]).
io(96, depth, [[run(double, [a], f1), run(concat, [f1, f1], f2), run(sum, [b], f3), run(concat, [f2, b], f4)], f4], 3).
io(97, reproduce, [[run(double, [a], f1), run(sum, [b], f2), run(sort, [f1], f3)], [a-[3, 2, 6], b-[0, 5, 8]], f3], [4, 6, 12]).
io(98, lineage, [[run(double, [a], f1), run(sum, [b], f2)], f2], [b]).
io(99, depth, [[run(concat, [b, a], f1), run(sum, [f1], f2), run(sort, [b], f3), run(sort, [b], f4), run(double, [a], f5)], f5], 1).
io(100, reproduce, [[run(sort, [b], f1), run(sum, [b], f2), run(double, [b], f3), run(sort, [a], f4), run(sum, [a], f5)], [a-[], b-[3, 0]], f5], [0]).
io(101, lineage, [[run(sort, [a], f1), run(double, [f1], f2)], f2], [a]).
io(102, depth, [[run(double, [b], f1), run(sum, [f1], f2), run(reverse, [f2], f3), run(double, [a], f4)], f4], 1).
io(103, reproduce, [[run(concat, [a, a], f1)], [a-[3, 7], b-[9, 8]], f1], [3, 7, 3, 7]).
io(104, lineage, [[run(sort, [a], f1), run(double, [a], f2), run(sort, [f1], f3), run(sort, [b], f4), run(reverse, [a], f5)], f5], [a]).
io(105, depth, [[run(sum, [a], f1), run(sum, [b], f2)], f2], 1).
io(106, reproduce, [[run(double, [b], f1), run(reverse, [f1], f2)], [a-[7, 9, 3, 6], b-[9, 3]], f2], [6, 18]).
io(107, lineage, [[run(concat, [a, a], f1), run(reverse, [f1], f2), run(double, [b], f3), run(reverse, [b], f4)], f4], [b]).
io(108, depth, [[run(reverse, [a], f1), run(concat, [b, b], f2)], f2], 1).
io(109, reproduce, [[run(sort, [b], f1), run(double, [a], f2)], [a-[2], b-[6, 2, 3]], f2], [4]).
io(110, lineage, [[run(sum, [b], f1), run(sort, [b], f2), run(double, [b], f3), run(double, [f1], f4), run(sort, [f1], f5)], f5], [b]).
io(111, depth, [[run(double, [a], f1), run(sum, [a], f2), run(reverse, [b], f3), run(double, [f3], f4)], f4], 2).
io(112, reproduce, [[run(sum, [a], f1), run(sort, [f1], f2), run(sort, [a], f3)], [a-[0, 6, 8, 3], b-[6]], f3], [0, 3, 6, 8]).
io(113, lineage, [[run(concat, [b, a], f1)], f1], [a, b]).
io(114, depth, [[run(double, [b], f1), run(sort, [f1], f2)], f2], 2).
io(115, reproduce, [[run(sum, [b], f1)], [a-[3], b-[5, 9, 4, 6]], f1], [24]).
io(116, lineage, [[run(sort, [b], f1), run(concat, [b, b], f2), run(double, [f1], f3), run(concat, [f3, a], f4), run(concat, [f2, b], f5)], f5], [b]).
io(117, depth, [[run(concat, [b, b], f1), run(reverse, [f1], f2), run(reverse, [f2], f3)], f3], 3).
io(118, reproduce, [[run(concat, [b, b], f1), run(reverse, [a], f2), run(concat, [f2, f1], f3), run(double, [f3], f4)], [a-[2], b-[0, 5, 6]], f4], [4, 0, 10, 12, 0, 10, 12]).
io(119, lineage, [[run(reverse, [a], f1), run(sum, [a], f2)], f2], [a]).
io(120, depth, [[run(double, [b], f1)], f1], 1).
io(121, reproduce, [[run(concat, [a, a], f1), run(double, [b], f2), run(double, [a], f3), run(double, [f1], f4), run(reverse, [b], f5)], [a-[2, 8], b-[7, 4, 5]], f5], [5, 4, 7]).
io(122, lineage, [[run(concat, [b, b], f1), run(sort, [b], f2)], f2], [b]).
io(123, depth, [[run(sort, [a], f1), run(sum, [a], f2), run(reverse, [b], f3), run(double, [a], f4), run(sum, [a], f5)], f5], 1).
io(124, reproduce, [[run(concat, [b, b], f1), run(double, [f1], f2), run(concat, [b, b], f3), run(reverse, [f2], f4), run(sum, [f2], f5)], [a-[], b-[]], f5], [0]).
io(125, lineage, [[run(sum, [a], f1)], f1], [a]).
io(126, depth, [[run(double, [a], f1), run(double, [a], f2), run(reverse, [a], f3), run(concat, [b, b], f4)], f4], 1).
io(127, reproduce, [[run(sort, [a], f1), run(reverse, [a], f2), run(reverse, [a], f3), run(double, [b], f4), run(sum, [a], f5)], [a-[4], b-[7]], f5], [4]).
io(128, lineage, [[run(reverse, [b], f1)], f1], [b]).
io(129, depth, [[run(double, [a], f1), run(reverse, [a], f2)], f2], 1).
io(130, reproduce, [[run(sum, [b], f1), run(double, [a], f2), run(sum, [f2], f3), run(sort, [f2], f4), run(double, [b], f5)], [a-[], b-[3]], f5], [6]).
io(131, lineage, [[run(reverse, [b], f1), run(sum, [b], f2)], f2], [b]).
io(132, depth, [[run(concat, [a, b], f1)], f1], 1).
io(133, reproduce, [[run(sort, [a], f1)], [a-[4, 2], b-[]], f1], [2, 4]).
io(134, lineage, [[run(sum, [a], f1)], f1], [a]).
io(135, depth, [[run(reverse, [a], f1), run(concat, [f1, b], f2), run(sort, [f2], f3)], f3], 3).
io(136, reproduce, [[run(sum, [b], f1), run(concat, [b, a], f2), run(concat, [a, f1], f3)], [a-[2], b-[]], f3], [2, 0]).
io(137, lineage, [[run(double, [a], f1), run(concat, [b, a], f2), run(sum, [b], f3), run(reverse, [b], f4)], f4], [b]).
io(138, depth, [[run(sort, [b], f1), run(double, [b], f2)], f2], 1).
io(139, reproduce, [[run(concat, [b, b], f1)], [a-[3, 0, 6], b-[3, 6]], f1], [3, 6, 3, 6]).
io(140, lineage, [[run(sum, [a], f1), run(reverse, [a], f2), run(reverse, [a], f3), run(concat, [b, f2], f4), run(concat, [f3, f1], f5)], f5], [a]).
io(141, depth, [[run(concat, [a, a], f1)], f1], 1).
io(142, reproduce, [[run(double, [a], f1), run(double, [b], f2)], [a-[8, 5, 8], b-[7, 4, 7, 0]], f2], [14, 8, 14, 0]).
io(143, lineage, [[run(sum, [a], f1), run(double, [f1], f2), run(double, [f1], f3)], f3], [a]).
io(144, depth, [[run(reverse, [b], f1), run(reverse, [f1], f2), run(sort, [b], f3)], f3], 1).
io(145, reproduce, [[run(sum, [a], f1), run(concat, [a, a], f2)], [a-[], b-[3]], f2], []).
io(146, lineage, [[run(concat, [a, a], f1)], f1], [a]).
io(147, depth, [[run(reverse, [a], f1)], f1], 1).
io(148, reproduce, [[run(double, [b], f1)], [a-[], b-[]], f1], []).
io(149, lineage, [[run(sum, [a], f1)], f1], [a]).
io(150, depth, [[run(reverse, [a], f1), run(double, [a], f2), run(concat, [f1, b], f3), run(reverse, [b], f4)], f4], 1).
io(151, reproduce, [[run(concat, [a, a], f1)], [a-[], b-[4, 7, 3]], f1], []).
io(152, lineage, [[run(reverse, [b], f1), run(sum, [f1], f2), run(concat, [f1, f2], f3)], f3], [b]).
io(153, depth, [[run(concat, [b, a], f1)], f1], 1).
io(154, reproduce, [[run(reverse, [b], f1), run(sum, [b], f2), run(double, [b], f3)], [a-[], b-[]], f3], []).
io(155, lineage, [[run(reverse, [b], f1), run(concat, [f1, b], f2), run(reverse, [f1], f3), run(sum, [a], f4)], f4], [a]).
io(156, depth, [[run(sort, [b], f1), run(sort, [f1], f2), run(reverse, [b], f3), run(concat, [f3, f2], f4)], f4], 3).
io(157, reproduce, [[run(sort, [b], f1), run(sum, [b], f2), run(sort, [b], f3), run(double, [f2], f4)], [a-[1], b-[2, 8]], f4], [20]).
io(158, lineage, [[run(sum, [a], f1), run(sort, [f1], f2), run(reverse, [f2], f3)], f3], [a]).
io(159, depth, [[run(concat, [b, a], f1), run(concat, [f1, a], f2)], f2], 2).
io(160, reproduce, [[run(sort, [a], f1), run(sort, [f1], f2), run(double, [a], f3), run(sort, [a], f4), run(double, [f2], f5)], [a-[2, 1, 4, 6], b-[8, 4, 4, 4]], f5], [2, 4, 8, 12]).
io(161, lineage, [[run(double, [a], f1), run(sort, [a], f2)], f2], [a]).
io(162, depth, [[run(double, [b], f1), run(concat, [b, a], f2), run(concat, [a, a], f3), run(sort, [f3], f4), run(reverse, [f2], f5)], f5], 2).
io(163, reproduce, [[run(reverse, [b], f1), run(concat, [f1, f1], f2), run(concat, [f1, f2], f3)], [a-[1, 0, 5, 2], b-[1, 5, 2]], f3], [2, 5, 1, 2, 5, 1, 2, 5, 1]).
io(164, lineage, [[run(sum, [b], f1), run(double, [f1], f2), run(double, [f2], f3), run(reverse, [f3], f4)], f4], [b]).
io(165, depth, [[run(concat, [b, b], f1), run(sort, [b], f2), run(sort, [a], f3), run(sum, [f3], f4), run(concat, [f1, f2], f5)], f5], 2).
io(166, reproduce, [[run(double, [b], f1)], [a-[3], b-[2]], f1], [4]).
io(167, lineage, [[run(sort, [a], f1), run(reverse, [a], f2)], f2], [a]).
io(168, depth, [[run(concat, [a, b], f1), run(concat, [f1, f1], f2)], f2], 2).
io(169, reproduce, [[run(sum, [b], f1), run(double, [b], f2)], [a-[1, 4, 0, 9], b-[4, 3]], f2], [8, 6]).
io(170, lineage, [[run(double, [b], f1), run(concat, [a, a], f2), run(sum, [f1], f3), run(sum, [f1], f4), run(concat, [f2, f3], f5)], f5], [a, b]).
io(171, depth, [[run(sum, [a], f1), run(double, [f1], f2), run(reverse, [a], f3)], f3], 1).
io(172, reproduce, [[run(double, [b], f1), run(sort, [b], f2), run(double, [f2], f3)], [a-[9, 3, 1, 1], b-[6]], f3], [12]).
io(173, lineage, [[run(concat, [b, a], f1), run(reverse, [f1], f2)], f2], [a, b]).
io(174, depth, [[run(concat, [b, a], f1), run(reverse, [a], f2)], f2], 1).
io(175, reproduce, [[run(double, [a], f1), run(sort, [a], f2), run(reverse, [f2], f3), run(sort, [f3], f4)], [a-[6, 5], b-[6, 0]], f4], [5, 6]).
io(176, lineage, [[run(double, [b], f1), run(double, [a], f2), run(concat, [f2, f2], f3), run(double, [a], f4), run(sort, [f4], f5)], f5], [a]).
io(177, depth, [[run(reverse, [a], f1)], f1], 1).
io(178, reproduce, [[run(reverse, [a], f1), run(double, [b], f2), run(sort, [f1], f3), run(sort, [f1], f4)], [a-[4], b-[5, 5]], f4], [4]).
io(179, lineage, [[run(reverse, [a], f1), run(sort, [a], f2), run(concat, [a, a], f3), run(sort, [f2], f4)], f4], [a]).
io(180, depth, [[run(double, [a], f1), run(sum, [b], f2), run(concat, [b, b], f3), run(double, [a], f4), run(double, [f2], f5)], f5], 2).
io(181, reproduce, [[run(reverse, [b], f1), run(sort, [f1], f2), run(sort, [f1], f3), run(double, [a], f4)], [a-[1], b-[8]], f4], [2]).
io(182, lineage, [[run(double, [b], f1), run(sort, [f1], f2), run(reverse, [f2], f3), run(sum, [f2], f4)], f4], [b]).
io(183, depth, [[run(sum, [a], f1), run(concat, [a, b], f2)], f2], 1).
io(184, reproduce, [[run(double, [a], f1), run(double, [a], f2)], [a-[6, 1, 7, 2], b-[6, 4, 2]], f2], [12, 2, 14, 4]).
io(185, lineage, [[run(sum, [b], f1)], f1], [b]).
io(186, depth, [[run(concat, [b, a], f1), run(reverse, [a], f2), run(double, [a], f3), run(sort, [a], f4)], f4], 1).
io(187, reproduce, [[run(reverse, [b], f1), run(double, [a], f2)], [a-[9, 2], b-[]], f2], [18, 4]).
io(188, lineage, [[run(double, [a], f1), run(double, [f1], f2)], f2], [a]).
io(189, depth, [[run(reverse, [b], f1), run(sort, [b], f2), run(concat, [f1, f2], f3)], f3], 2).
io(190, reproduce, [[run(concat, [a, b], f1)], [a-[4, 0, 0, 8], b-[9, 4, 6, 3]], f1], [4, 0, 0, 8, 9, 4, 6, 3]).
io(191, lineage, [[run(double, [a], f1), run(concat, [a, b], f2), run(reverse, [b], f3), run(double, [a], f4)], f4], [a]).
io(192, depth, [[run(concat, [b, a], f1)], f1], 1).
io(193, reproduce, [[run(sort, [b], f1), run(double, [a], f2)], [a-[], b-[8, 6, 0, 0]], f2], []).
io(194, lineage, [[run(sum, [a], f1), run(sum, [a], f2)], f2], [a]).
io(195, depth, [[run(concat, [a, a], f1), run(sum, [a], f2), run(reverse, [a], f3), run(concat, [f2, f3], f4)], f4], 2).
io(196, reproduce, [[run(concat, [b, a], f1)], [a-[7, 6, 3], b-[5, 5, 4]], f1], [5, 5, 4, 7, 6, 3]).
io(197, lineage, [[run(sum, [b], f1)], f1], [b]).
io(198, depth, [[run(reverse, [a], f1), run(concat, [f1, b], f2), run(sum, [f2], f3), run(concat, [f2, f1], f4), run(sort, [f4], f5)], f5], 4).
io(199, reproduce, [[run(sort, [a], f1), run(reverse, [a], f2), run(sort, [b], f3)], [a-[7], b-[3, 3, 7]], f3], [3, 3, 7]).
io(200, lineage, [[run(concat, [b, b], f1), run(double, [b], f2), run(concat, [a, f1], f3)], f3], [a, b]).
