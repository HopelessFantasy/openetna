.class public LSQLite/Stmt;
.super Ljava/lang/Object;
.source "Stmt.java"


# instance fields
.field protected error_code:I

.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 286
    invoke-static {}, LSQLite/Stmt;->internal_init()V

    .line 287
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/Stmt;->handle:J

    .line 24
    const/4 v0, 0x0

    iput v0, p0, LSQLite/Stmt;->error_code:I

    return-void
.end method

.method private static native internal_init()V
.end method


# virtual methods
.method public native bind(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind_parameter_count()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind_parameter_index(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind_parameter_name(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native bind_zeroblob(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native clear_bindings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public column(I)Ljava/lang/Object;
    .registers 5
    .parameter "col"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0, p1}, LSQLite/Stmt;->column_type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 238
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 230
    :pswitch_9
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p1}, LSQLite/Stmt;->column_long(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_8

    .line 232
    :pswitch_13
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, LSQLite/Stmt;->column_double(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_8

    .line 234
    :pswitch_1d
    invoke-virtual {p0, p1}, LSQLite/Stmt;->column_bytes(I)[B

    move-result-object v0

    goto :goto_8

    .line 236
    :pswitch_22
    invoke-virtual {p0, p1}, LSQLite/Stmt;->column_string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 228
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method public native column_bytes(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_count()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_database_name(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_decltype(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_double(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_int(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_long(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_origin_name(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_string(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_table_name(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native column_type(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method protected native finalize()V
.end method

.method public native prepare()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public native step()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method
