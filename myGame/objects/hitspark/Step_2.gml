if (!instance_exists(MYENEMY)) instance_destroy();
else if (MYENEMY)
{
    x = MYENEMY.x;
    y = MYENEMY.y;
}
else instance_destroy();