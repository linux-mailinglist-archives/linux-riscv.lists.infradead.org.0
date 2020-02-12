Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C5515A679
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu62s4ocvYkFECsl8Jh/V2JW62xz6nKADKCiLnMOeUg=; b=XfctjBH5vj/tCD
	Vhrha5oMVTDI/hVUalR7VR8obFK55zpjjSODqfskECZmHOjMBT1br+Usr0M4hEtFUwJJGw/iIygCD
	OA2B8FQJkiDlOpsk4i7T7ySzwAXAfBLb7Epa3lpjQKBnge964HzgGMnAXvLRhYKK9w4n26xItQWOi
	frCjSKXOv9zzFBLZR/9p8mN0xG2Go6xRyyDRLsap+TOFEnKWo0YGdqcjj2WGXa8XqNOrR6yzulW2s
	SXViyzxON/dd2C4Tcx8cj9n6q7aEQdXroQ2DMod4dPh6a77ZkdWYte1VlQseZd7J6W1YTgwbpynuT
	OGLfG13e4k5hhFl/ZUsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pLu-0002Lu-0J; Wed, 12 Feb 2020 10:34:42 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLo-0002KR-OS
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503677; x=1613039677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tHl5TnkOqkg/twSyCGEuKxl+uXzRh0Hz6lA1uu11Nqg=;
 b=hP1t6ULMruPVObBtp5MH/vtp11QrGSlQhTcBCUOt9Mc5CjgWcQ/K7Sli
 HbNtwNHEG3vfcMvGe8Kmvaa5Xya/x3nf2PYH7sz7APAk/tkLdCAhwbFve
 iOtcls+d6d8STiP4X2uvlk39v7LM66Q61Tq8tUDlMjqAWU46pKBGacaPc
 AUREL1nQmzeDtTHn3utQFbNy2kXBHpXIG5b/GCqozZU1SejfCAPVh2zkg
 HfZu+X58Mz1fBebVOGpncgLtdDBIEt92kUEizti3cpJ6MkunWpqqVCRAA
 nyrl65e67OAY4WfahiWoHZ90YYDTvsCtB4dPmDZIiMug1S8V/jS4GkBwQ g==;
IronPort-SDR: kYBsE3dw6u1Lit0xIhVSlTHNQzRp6Yvp0BHBQD4kk9HyTaNMdUZAauyShpd09qTgIzrbEKVPzG
 kCRx2AzXx4czfKWd3Nq69QiFweBt/W7ZXihg3xqeNHK/JWcLeHGZuHd9c8OZCy9kS9v7rXURKB
 NqMjl05LC6D1wljAwgSBfGPSSN3nAGuFYS5+oIpBbzoMnxqeWmizQo9/Vgb4+vgNaXOz3aGExr
 TZfAH2k//R9uHNrGoAF3bV4hgTX6Tr8QCZtIHTzDE0bweuNPoumd6p2t6ftPeyhCouAI05ndmo
 iVo=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113041"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:36 +0800
IronPort-SDR: opMkitnJVARF9JsqW3YrcW4vjEB2EqyS+FzrVp0MX7eca/vTLOe2fR+V8P80tbVd1HwfKXwdyD
 fxWvDmu6b9mWqf2DJhJkBWhQW7zikBDROnNMX58hdmgFYxTumqFZXDSKRTxaJr1nykeUAKm/cR
 Ay3MkcunxTAt2tAGO7us2bxhQi5G9JvIfOw8AvKdTXsf7DW7Uct0QfSDgXcYVcbXfb4vJl5QVB
 j3nvy6nokfRYRy7gt3TTqewEqw9L2aytjxZ4SNlfYBVFBasclaElYbcYqwv6pADon5bUzpyCOQ
 2/iPPA87QXjFXn2vGZJ6SN/L
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:24 -0800
IronPort-SDR: HaUshPNSTHQbnw+ENjnMMWmTvLWSPa79d0osXJV/xZ+6+JcquGgXEWiLPMTa+pKjVQw7tOPmNh
 CA3Kg/S8OxmdZX63EnPG0eIah6j6TtuAtbbU6efkP4kDxVkodwaoWWnTBhEmixPPjKAP7ZpzCA
 mhkNzGvHB2JJRvEnMClzJxWzEFstEt7WtouzfVwinzUBQGfo/mlEQTspONo/vBu+aFJz0XLKW0
 bkJg1+gWNxdGK6xBhiBFB4f1Ng2MYuVMPQouSDiXj97VvfWgUghoCJPN0IpZ0ekt2eCLNfbSbJ
 rU4=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:33 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 01/10] riscv: Fix gitignore
Date: Wed, 12 Feb 2020 19:34:23 +0900
Message-Id: <20200212103432.660256-2-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023436_878953_61398205 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Tell git to not track the compiled boot/loader and boot/loader.lds
files.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/boot/.gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/.gitignore b/arch/riscv/boot/.gitignore
index 8dab0bb6ae66..8a45a37d2af4 100644
--- a/arch/riscv/boot/.gitignore
+++ b/arch/riscv/boot/.gitignore
@@ -1,2 +1,4 @@
 Image
 Image.gz
+loader
+loader.lds
-- 
2.24.1


