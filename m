Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649C11C319A
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 06:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d7jji14Lfi3x0u1lSplVHwBqXSKdk7k1wvUdDoCvjk0=; b=A8KcZvS5Bqpct9
	I/LG0vPLEzqIINEhTE98ODttt9r4dzag2bK6HfaB09dRMqWmk6zywdaJdkGh3Ue3dcTcO+up8/M8n
	jHWNzA/lKymzEb/Tbwv4FExZwKQpk6MYvv5a/jpu1IVhynowZ/So0udC3jO/S/s3DtFWzn6dUEmvQ
	KeBOnw9LVt7vJ0DyKQlVMiH8oYt5G1H3ScKR+oxfZo2WK1SuGqx86QEjh71LyxAQhXUQ/vVMj2Dyt
	x6r81EejD9rwoXvhPZPu3vNVxWLMZam7Ic0JNl6+rzhlrPx014Fsgginb+wBnv41xbHgT6cNZQ8M3
	v1AIAveiopLrbRiRUrlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVSKo-0005ux-PS; Mon, 04 May 2020 04:04:02 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVSKm-0005uS-5k
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 04:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588565040; x=1620101040;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kpRqgt1e2NQdJbBQkpUaOUuP+qP9IBaNNw7Ep6/63JA=;
 b=iXAtfUaa/l3H19WPQvRrrHNYD3vHiUNpSdU47xt6Uq3ggMz7bhUsACK1
 7V5J4rzGIVimqmSxEWB85huT1zyc3URvznORjaLE6wRXchqvfuXSY9VX/
 eBCM/cbYqXAOESax7UctAqbDXxkfqLxBInAr+089KQdPVpLEc4S6h7KsK
 I9J7VFf8sN8ZY5hFiPtztVA+Y+4WYeLstbtISYbQ7vHZOqIkp4l63o0sN
 9fMbw7IRmqyyjYne9flAhtaFnRlVUEgey6XZmYV02VgWu0a00pQht6dDX
 A47w90Y1c2FuiTLpzlszDupgGeBJel49CcyAJT4dveh0fZ8XvJ2NsElA/ g==;
IronPort-SDR: OZOsqawTCfgyH6hLtx8eZ4RyjaouHLNWkTzpKXNTt/G8g11+M65pjFNfSSGEnVE3fimAzQAzO9
 Ztxz1HU2D9ZeJJeyXKEXX+TAoI7J9u5k4Aj+w4c0L+lluYjrSkXf6SyfZslIghhOvIK+cS0HZF
 eHREFPWZ/BBzJ1K68VCSgAiCtF6n6eCaZ6Exvb9JRfyKuOsVKh7vymxg0rujE29RCAELiKSH8i
 NBGmNZkP91yUIHxKdRAPJKks+dpLakVWWvrDXCQSjaBjGt8BYC0TsmvJl5ntzFpJniOoeS7T6W
 FTM=
X-IronPort-AV: E=Sophos;i="5.73,350,1583164800"; d="scan'208";a="138270234"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 12:03:59 +0800
IronPort-SDR: l8JPhB7rvNEamnOYXkAnE2Xddo0fgy11kDusLjNtsHphNlWYjReDxZD9n1esFQTxU5hgmCvdrc
 tPvMqdQD/gDnB56vHAoc8bPu4CtneDaww=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 20:54:29 -0700
IronPort-SDR: F/dysIwzax7M/PVnAc/1t2dyxkVmHgmQ2FEEAYlqSkikeYC9HEIhTFEDAylSwnF9nadTq0c4Bz
 sVZqMF0peN7w==
WDCIronportException: Internal
Received: from unknown (HELO yoda.hgst.com) ([10.86.56.169])
 by uls-op-cesaip01.wdc.com with ESMTP; 03 May 2020 21:03:58 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Remove unused code from STRICT_KERNEL_RWX
Date: Sun,  3 May 2020 21:03:19 -0700
Message-Id: <20200504040319.31423-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_210400_268043_F88DE970 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch removes the unused functions set_kernel_text_rw/ro.
Currently, it is not being invoked from anywhere and no other architecture
(except arm) uses this code. Even in ARM, these functions are not invoked
from anywhere currently.

Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/mm/init.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index b55be44ff9bd..ba60a581e9b6 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -501,22 +501,6 @@ static inline void setup_vm_final(void)
 #endif /* CONFIG_MMU */
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-void set_kernel_text_rw(void)
-{
-	unsigned long text_start = (unsigned long)_text;
-	unsigned long text_end = (unsigned long)_etext;
-
-	set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
-}
-
-void set_kernel_text_ro(void)
-{
-	unsigned long text_start = (unsigned long)_text;
-	unsigned long text_end = (unsigned long)_etext;
-
-	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
-}
-
 void mark_rodata_ro(void)
 {
 	unsigned long text_start = (unsigned long)_text;
-- 
2.26.2


