.class Lcom/android/calendar/IcsImportActivity$CalendarInfo;
.super Ljava/lang/Object;
.source "IcsImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/IcsImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarInfo"
.end annotation


# instance fields
.field public final id:J

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "name"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/android/calendar/IcsImportActivity$CalendarInfo;->id:J

    .line 54
    iput-object p3, p0, Lcom/android/calendar/IcsImportActivity$CalendarInfo;->name:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/IcsImportActivity$CalendarInfo;->name:Ljava/lang/String;

    return-object v0
.end method
