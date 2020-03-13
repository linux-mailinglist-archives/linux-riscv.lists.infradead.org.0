Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EC9184390
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DEulT0TIjpIawIknI5EgFVnadCCpLBAzLndl5Lj9Ts=; b=FaXm3rOi+8zVJo
	phkrVv4v6tZs+iBjbkVHIWE6AuTsVEH3O8qPglfhRC4HGDcD4H9ZvXliu5CwnkrdyDUZ0up2VR71V
	Sz7aynySwmIfzcMxftZV3/3Mls/FQM5cdN0XZ/szgCUr+EdRYIn2zHNZKWiWgc3KL82Mo/EB/IlXe
	exe8N7s720cCcJexZppdWT/41fX0hgPhVHIKxcVYZzUSSDaOhtZSx6RlNHGjz7+xyHUyuxgjRNh2M
	BMR+xuIL96C2LVSXYL9KArtA10QOmy7mWeRuL14AuUljpg6G5ikpTJoKD39zNmQb8zFf9r6sh0a2A
	Sn2yTgYnT5LJZkl/mYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRU-0006qS-F9; Fri, 13 Mar 2020 09:17:20 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQz-0006Ig-B4
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091009; x=1615627009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CRphVM9azTZ6wdO6A/8eBNh9+TUuoUAsSA+06Emv/Xc=;
 b=SwGWadt/kSEJNehVUFsW2CMRF5jODo2bbRndoNouPh3bEonP2nQ7OiQz
 kbA/a6/E3Ng4ffZO7TBJUFWdq+yWsivmt0uIq8QDxBHdN8Ip3A/S8VFam
 DpozNcRJoxCmAKceMaMmCY3zDzU8JsVInEr6D3uNjNWE3X1/ncDhHs5vL
 RIYVb/JEXAkF78BcJ75M474KmeC4McXwRHdC51OomokVPXtxdI+UrGRFG
 ln2hb5ldN6O1Cl9cUdgyVkI2/SOEZshzyN0P3kxw6lp3GiouxOj2YcQwF
 ATmvyAM7n9F9IOK66NhTfgfY9LLBrsLziW6sJq7Ck7rR+H9YRvD6vWDIf w==;
IronPort-SDR: RQEpRwCDwCa1R58ec0CDKM86zxg1odBOBRvP/3eRMq3cI75U3c4fdOvL2+04JYKWiqjCsyvWSc
 kmN4skdqX3eA8GcI7tmv+hzTE9343HSDLd8Fc5Xu4IPXGFIAHs7g4s4QiRYH8dxFDAs1IzHX6k
 mNUtBUqw1WY/8EB9orpE5eda/QhbruzvXLT4GXFQn/6rUvYYowhbLXrubVDt7U8AhnvVQ5hVW1
 Ei5A57NSlMds51HDVjTjePL7kn2sOZZJlHR/RsveBD8sKxGob6W6a3dGNNCIaIUV0B3ePb02+4
 c2g=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669794"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:48 +0800
IronPort-SDR: a4KvFwwT4xJoVUvN3j55eGDZel1+oe7GEQb/7V80WEAhD28zlklJk0mQO37cruUwkCBSE9RpjC
 omOIy85A0SGJR1oQkbHowsAb4N8Yh5y5GliHHBUTE8W4+X9Q2GzwuLX533tpWzqEElHvLm85jn
 DLNqgW0oeooG1Rft6BHtdc8Qac4wTgvqj5gCdut8mMx/iNpA708TTRqImDsLJWFekbxGIF2Mzh
 LBdvd4lyUv7j1OOP7npQqV9R5tKYXIHA7nFYdhiGjooJcxpyhB4gjSYvT1q05/qqSONoipgvAx
 DIeZnWsfp2tcQDYQYwExWTEs
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:47 -0700
IronPort-SDR: T/tljhhoKG26o7/MP/s6G4xk8Zm76Hm7WwF+QJrFqCu4DYJrIj9Bs8fPINxW8itgIZ3zqY9KEY
 +PW6Y/4IprR4/VWSkc1YuuCv0UI1P7xLNzTX2B/6yRhyY9es0RelQzqyU1IGCFxAV62ATbbCWN
 nkkEPvnFupb9wqunwITUNbo5SEPb1Ah6wiGp0+fGoafZ9IpEj0zziAfLQTM18rMYmvYE749ABC
 OBnJikrQmgF1+4oAQaEtO7wdzYd0yLG8MRw2hBd/INj9be7tPV7Jbhz8ELKqG7rece+pLcDi2A
 ZyI=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:48 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 9/9] riscv: Do not initialize PMP on Kendryte SoC
Date: Fri, 13 Mar 2020 18:16:39 +0900
Message-Id: <20200313091639.87862-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021649_409332_EE38E687 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Commit c68a9032299e ("riscv: set pmp configuration if kernel is running
in M-mode") added PMP initialization to M-Mode. While this patch is
valid for any SoC following the ratified riscv specifications, the
Kendryte K210 SoC is based on earlier unstable specifications and does
not seem to support PMP initialization (the SoC crashes if CSR_PMPADDR0
or CSR_PMPCFG0 are accessed).

Since all physical memory access works fine on this SoC without any
explicit PMP initialization, avoid the SoC crash by not touching the
PMP CSRs.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/kernel/head.S | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 52ed11b4fda6..1a5defdc33d2 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -58,11 +58,17 @@ _start_kernel:
 	/* Reset all registers except ra, a0, a1 */
 	call reset_regs
 
-	/* Setup a PMP to permit access to all of memory. */
+	/*
+	 * For M-mode, setup PMP to permit access to all of memory.
+	 * This should however not be done for the  Kendryte K210 SoC as this
+	 * causes a crash (this SoC follows older unstable specification).
+	 */
+#ifndef CONFIG_SOC_KENDRYTE
 	li a0, -1
 	csrw CSR_PMPADDR0, a0
 	li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
 	csrw CSR_PMPCFG0, a0
+#endif
 
 	/*
 	 * The hartid in a0 is expected later on, and we have no firmware
-- 
2.24.1


