.class Lcom/android/commands/monkey/Monkey$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/monkey/Monkey;


# direct methods
.method private constructor <init>(Lcom/android/commands/monkey/Monkey;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;)V

    return-void
.end method

.method private checkEnteringPackage(Ljava/lang/String;)Z
    .registers 4
    .parameter "pkg"

    .prologue
    const/4 v1, 0x1

    .line 172
    if-nez p1, :cond_5

    move v0, v1

    .line 179
    :goto_4
    return v0

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v0}, Lcom/android/commands/monkey/Monkey;->access$100(Lcom/android/commands/monkey/Monkey;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 177
    goto :goto_4

    .line 179
    :cond_13
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v0}, Lcom/android/commands/monkey/Monkey;->access$100(Lcom/android/commands/monkey/Monkey;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .registers 6
    .parameter "pkg"

    .prologue
    .line 159
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    // activityResuming("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const/4 v1, 0x0

    move v0, v1

    .line 161
    .local v0, allow:Z
    :goto_26
    if-nez v0, :cond_56

    .line 162
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->access$000(Lcom/android/commands/monkey/Monkey;)I

    move-result v1

    if-lez v1, :cond_56

    .line 163
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_5c

    const-string v3, "Allowing"

    :goto_41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resume of package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_56
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 168
    return v0

    .line 160
    .end local v0           #allow:Z
    :cond_59
    const/4 v1, 0x1

    move v0, v1

    goto :goto_26

    .line 163
    .restart local v0       #allow:Z
    :cond_5c
    const-string v3, "Rejecting"

    goto :goto_41
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 7
    .parameter "intent"
    .parameter "pkg"

    .prologue
    .line 148
    invoke-direct {p0, p2}, Lcom/android/commands/monkey/Monkey$ActivityController;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const/4 v1, 0x0

    move v0, v1

    .line 149
    .local v0, allow:Z
    :goto_8
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v1}, Lcom/android/commands/monkey/Monkey;->access$000(Lcom/android/commands/monkey/Monkey;)I

    move-result v1

    if-lez v1, :cond_40

    .line 150
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_48

    const-string v3, "Allowing"

    :goto_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_40
    sput-object p2, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 154
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    .line 155
    return v0

    .line 148
    .end local v0           #allow:Z
    :cond_45
    const/4 v1, 0x1

    move v0, v1

    goto :goto_8

    .line 150
    .restart local v0       #allow:Z
    :cond_48
    const-string v3, "Rejecting"

    goto :goto_21
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)Z
    .registers 14
    .parameter "processName"
    .parameter "pid"
    .parameter "shortMsg"
    .parameter "longMsg"
    .parameter "crashData"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// CRASH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Short Msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Long Msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    if-eqz p5, :cond_112

    .line 191
    :try_start_5c
    new-instance v0, Landroid/server/data/CrashData;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Landroid/server/data/CrashData;-><init>(Ljava/io/DataInput;)V

    .line 193
    .local v0, cd:Landroid/server/data/CrashData;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Build Label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/server/data/CrashData;->getBuildData()Landroid/server/data/BuildData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/data/BuildData;->getFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Build Changelist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/server/data/CrashData;->getBuildData()Landroid/server/data/BuildData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/data/BuildData;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Build Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/server/data/CrashData;->getBuildData()Landroid/server/data/BuildData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/data/BuildData;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/server/data/CrashData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/server/data/CrashData;->getActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/server/data/CrashData;->getThrowableData()Landroid/server/data/ThrowableData;

    move-result-object v3

    const-string v4, "// "

    invoke-virtual {v3, v4}, Landroid/server/data/ThrowableData;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_112} :catch_12e

    .line 208
    .end local v0           #cd:Landroid/server/data/CrashData;
    :cond_112
    :goto_112
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 209
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 210
    :try_start_11d
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$302(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 211
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_11d .. :try_end_124} :catchall_138

    .line 213
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$400(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-nez v2, :cond_13b

    move v2, v7

    .line 215
    :goto_12d
    return v2

    .line 203
    :catch_12e
    move-exception v2

    move-object v1, v2

    .line 204
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "// BAD STACK CRAWL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_112

    .line 211
    .end local v1           #e:Ljava/io/IOException;
    :catchall_138
    move-exception v3

    :try_start_139
    monitor-exit v2
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw v3

    :cond_13b
    move v2, v6

    .line 213
    goto :goto_12d

    :cond_13d
    move v2, v6

    .line 215
    goto :goto_12d
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8
    .parameter "processName"
    .parameter "pid"
    .parameter "processStats"

    .prologue
    const/4 v3, 0x1

    .line 220
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "// NOT RESPONDING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v0}, Lcom/android/commands/monkey/Monkey;->access$500(Lcom/android/commands/monkey/Monkey;)V

    .line 224
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v0

    .line 225
    :try_start_36
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->access$602(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 226
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->access$702(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 227
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_5f

    .line 228
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v0}, Lcom/android/commands/monkey/Monkey;->access$800(Lcom/android/commands/monkey/Monkey;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 229
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v0

    .line 230
    :try_start_4e
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->access$302(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 231
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_62

    .line 232
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-static {v0}, Lcom/android/commands/monkey/Monkey;->access$400(Lcom/android/commands/monkey/Monkey;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, -0x1

    .line 234
    :goto_5e
    return v0

    .line 227
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 231
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1

    :cond_65
    move v0, v3

    .line 232
    goto :goto_5e

    :cond_67
    move v0, v3

    .line 234
    goto :goto_5e
.end method
