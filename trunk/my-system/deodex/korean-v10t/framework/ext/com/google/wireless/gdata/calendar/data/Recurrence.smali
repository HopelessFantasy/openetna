.class public Lcom/google/wireless/gdata/calendar/data/Recurrence;
.super Ljava/lang/Object;
.source "Recurrence.java"


# instance fields
.field private final recurrence:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "recurrence"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/Recurrence;->recurrence:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/Recurrence;->recurrence:Ljava/lang/String;

    return-object v0
.end method
