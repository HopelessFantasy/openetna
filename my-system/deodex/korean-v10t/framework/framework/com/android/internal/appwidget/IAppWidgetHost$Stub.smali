.class public abstract Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetHost.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetHost"

.field static final TRANSACTION_providerChanged:I = 0x2

.field static final TRANSACTION_updateAppWidget:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;
    .registers 3
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v1, 0x0

    .line 39
    :goto_3
    return-object v1

    .line 35
    :cond_4
    const-string v1, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "com.android.internal.appwidget.IAppWidgetHost"

    .line 47
    sparse-switch p1, :sswitch_data_4e

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 51
    :sswitch_b
    const-string v2, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v2, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 61
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 66
    .local v1, _arg1:Landroid/widget/RemoteViews;
    :goto_29
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    move v2, v3

    .line 67
    goto :goto_a

    .line 64
    .end local v1           #_arg1:Landroid/widget/RemoteViews;
    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/widget/RemoteViews;
    goto :goto_29

    .line 71
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/widget/RemoteViews;
    :sswitch_30
    const-string v2, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 76
    sget-object v2, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 81
    .local v1, _arg1:Landroid/appwidget/AppWidgetProviderInfo;
    :goto_47
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    move v2, v3

    .line 82
    goto :goto_a

    .line 79
    .end local v1           #_arg1:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_47

    .line 47
    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_30
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
