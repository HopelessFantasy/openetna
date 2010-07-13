.class public Lcom/android/commands/svc/PowerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "PowerCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    const-string v0, "power"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "\n"

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usage: svc power stayon [true|false|usb|ac]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Set the \'keep awake while plugged in\' setting.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 8
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    .line 43
    array-length v3, p1

    if-lt v3, v5, :cond_6a

    .line 44
    const-string v3, "stayon"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6a

    .line 46
    const-string v3, "true"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 47
    const/4 v2, 0x3

    .line 60
    .local v2, val:I
    :goto_1e
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 63
    .local v1, pm:Landroid/os/IPowerManager;
    :try_start_28
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setStayOnSetting(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_50

    .line 73
    .end local v1           #pm:Landroid/os/IPowerManager;
    .end local v2           #val:I
    :goto_2b
    return-void

    .line 50
    :cond_2c
    const-string v3, "false"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 51
    const/4 v2, 0x0

    .restart local v2       #val:I
    goto :goto_1e

    .line 52
    .end local v2           #val:I
    :cond_38
    const-string v3, "usb"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 53
    const/4 v2, 0x2

    .restart local v2       #val:I
    goto :goto_1e

    .line 54
    .end local v2           #val:I
    :cond_44
    const-string v3, "ac"

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 55
    const/4 v2, 0x1

    .restart local v2       #val:I
    goto :goto_1e

    .line 65
    .restart local v1       #pm:Landroid/os/IPowerManager;
    :catch_50
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Faild to set setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2b

    .line 72
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #pm:Landroid/os/IPowerManager;
    .end local v2           #val:I
    :cond_6a
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->longHelp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string v0, "Control the power manager"

    return-object v0
.end method
