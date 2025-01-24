.class final Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EntryLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $arguments:Landroid/os/Bundle;

.field final synthetic $entryId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->$entryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->$arguments:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/android/settingslib/spa/framework/common/LogEvent;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;->invoke(Lcom/android/settingslib/spa/framework/common/LogEvent;Landroid/os/Bundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/settingslib/spa/framework/common/LogEvent;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extraData"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->getInstance()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    const/4 p0, 0x0

    throw p0
.end method
