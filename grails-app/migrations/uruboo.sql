SET FOREIGN_KEY_CHECKS=0;
INSERT INTO `comment` (`id`, `version`, `date_created`, `last_updated`, `message`, `receiver_id`, `sender_id`, `task_id`) VALUES
(1, 0, '2016-01-30 21:49:40', '2016-01-30 21:49:40', 'This is a comment', 1, 4, 1),
(2, 0, '2016-01-30 21:49:48', '2016-01-30 21:49:48', 'This is a comment', 1, 4, 1),
(3, 0, '2016-01-30 21:49:49', '2016-01-30 21:49:49', 'This is a comment', 1, 4, 1),
(4, 0, '2016-01-30 21:49:57', '2016-01-30 21:49:57', 'This is a comment', 4, 1, 1),
(5, 0, '2016-01-30 21:49:57', '2016-01-30 21:49:57', 'This is a comment', 4, 1, 1),
(6, 0, '2016-01-30 21:49:57', '2016-01-30 21:49:57', 'This is a comment', 4, 1, 1);


INSERT INTO `customer_account` (`id`, `version`, `customer_id`, `date_created`, `host`, `last_updated`, `password`, `username`) VALUES
(1, 0, 5, '2016-01-30 21:47:25', 'http://www.gmail.com', '2016-01-30 21:47:25', '123456', 'hector'),
(2, 0, 5, '2016-01-30 21:47:28', 'http://www.gmail.com', '2016-01-30 21:47:28', '123456', 'hector'),
(3, 0, 5, '2016-01-30 21:47:29', 'http://www.gmail.com', '2016-01-30 21:47:29', '123456', 'hector');


INSERT INTO `task` (`id`, `version`, `customer_id`, `date_created`, `description`, `finished`, `last_updated`, `state`, `title`) VALUES
(1, 0, 5, '2016-01-30 21:46:28', 'This is the description of the task', NULL, '2016-01-30 21:46:28', 'OPEN', 'This is a Task'),
(2, 0, 5, '2016-01-30 21:46:50', 'This is the description of the task', NULL, '2016-01-30 21:46:50', 'OPEN', 'This is a Task'),
(3, 0, 5, '2016-01-30 21:46:52', 'This is the description of the task', NULL, '2016-01-30 21:46:52', 'OPEN', 'This is a Task'),
(4, 0, 5, '2016-01-30 21:46:53', 'This is the description of the task', NULL, '2016-01-30 21:46:53', 'OPEN', 'This is a Task'),
(5, 0, 6, '2016-01-30 21:47:35', 'This is the description of the task', NULL, '2016-01-30 21:47:35', 'OPEN', 'This is a Task'),
(6, 0, 6, '2016-01-30 21:47:36', 'This is the description of the task', NULL, '2016-01-30 21:47:36', 'OPEN', 'This is a Task'),
(7, 0, 7, '2016-01-30 21:47:40', 'This is the description of the task', NULL, '2016-01-30 21:47:40', 'OPEN', 'This is a Task'),
(8, 0, 7, '2016-01-30 21:47:40', 'This is the description of the task', NULL, '2016-01-30 21:47:40', 'OPEN', 'This is a Task');

INSERT INTO `user` (`id`, `version`, `date_created`, `email`, `first_name`, `last_name`, `last_updated`, `notes`, `class`, `assistant_id`) VALUES
(1, 0, '2016-01-30 21:38:12', 'hectorpato17@gmail.com', 'Hector', 'Gavin Rivas', '2016-01-30 21:38:12', 'Hector notes', 'com.uruboo.Assistant', NULL),
(2, 0, '2016-01-30 21:38:48', 'adrian@gmail.com', 'Adrian', 'Lodos Gavin', '2016-01-30 21:38:48', 'Adrian notes', 'com.uruboo.Assistant', NULL),
(3, 0, '2016-01-30 21:39:04', 'cesar@gmail.com', 'Cesar', 'Santos Gavin', '2016-01-30 21:39:04', 'Cesar notes', 'com.uruboo.Assistant', NULL),
(4, 1, '2016-01-30 21:39:16', 'customer@gmail.com', 'Pablo', 'Perea Rivas', '2016-01-30 21:39:42', 'Customer notes', 'com.uruboo.Customer', 1),
(5, 1, '2016-01-30 21:39:16', 'customer@gmail.com', 'Pablo', 'Perea Rivas', '2016-01-30 21:39:46', 'Customer notes', 'com.uruboo.Customer', 1),
(6, 1, '2016-01-30 21:39:17', 'customer@gmail.com', 'Pablo', 'Perea Rivas', '2016-01-30 21:39:54', 'Customer notes', 'com.uruboo.Customer', 2),
(7, 1, '2016-01-30 21:39:17', 'customer@gmail.com', 'Pablo', 'Perea Rivas', '2016-01-30 21:40:02', 'Customer notes', 'com.uruboo.Customer', 3),
(8, 1, '2016-01-30 21:39:18', 'customer@gmail.com', 'Pablo', 'Perea Rivas', '2016-01-30 21:40:11', 'Customer notes', 'com.uruboo.Customer', 3);
SET FOREIGN_KEY_CHECKS=1;