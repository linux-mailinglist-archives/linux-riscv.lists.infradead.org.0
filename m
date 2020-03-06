Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3657117C628
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 20:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ViLUKR6NPVXPDD0tHLN/Wh2GAFU8Je9gBpC1tbyjlc=; b=gb3vwYwfM8Zv+J
	d2WmY3MR586c2UEm6n1xX2BO5mtI5D7JF/QNtDszbKqNi23B56VJ9brqjTOPqdJ+OcVmifA8bCSiV
	eq4MTzx0Jh+mMzK/6kydJxTmbj/Q2H3zjCBvCuxCj5qEB+akeE0a723oFmrPMvyHk28FDYsNS5zXQ
	DY83RwbRzwnCvNFzqgVM5Ql6DaFDpt8aJ6fiGZYfoejIo0jNgJquGF/Pz74nUxaH8iwN7kPc1LeCt
	KNJpr0M/xU9zuRHkz4oPjU3jSbop/BYep/vKxruaLcx2PmeH8Q8oVBvNOKdZzX84AF5/wFgIu1ZJJ
	BofQRqCgb4DwbSC4AanA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIUl-0004VX-5u; Fri, 06 Mar 2020 19:18:51 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIUg-0004UY-V2
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 19:18:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583522315;
 s=strato-dkim-0002; d=goldelico.com;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=5ViLUKR6NPVXPDD0tHLN/Wh2GAFU8Je9gBpC1tbyjlc=;
 b=BF8kO0NiRnZ3FJ+Fr7djVR2+Bign9vd3ucxlmb6umF8NUn8slrDhDEqcAXFWGMSZ5H
 GRIY73FNwqf95ECDVsc6wMK71VgN/jUipSJ8+tcxBMUsZ30DewOL+9xDsnPcOsxvr1ux
 i2lmsGn2MSK79uQTQtPmpRDcF7htxwAFOODfvMzf2WcvIHlNYFbxLHUKcxkLp5pPU5ML
 Q1fVj7ieyp6U4Zl6Zcs3Fk67+OXQi4QoE4s+rPsj1xeuFHrOoujOy4xzdHo5MfimHU9I
 Xyi6zKgQss2yKby9pk3888ySEKY0UszhObueZNzu/Ci2YhR4vqWBykJ6GO+UKzNX59mg
 MADA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6GQjzrz4="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.2.0 DYNA|AUTH)
 with ESMTPSA id y0a02cw26JHxa6z
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 6 Mar 2020 20:17:59 +0100 (CET)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] nvmem: jz4780-efuse: fix build warnings on ARCH=x86_64 or
 riscv
Date: Fri,  6 Mar 2020 20:17:58 +0100
Message-Id: <79e1dec195d287001515600b1dae0bcaa33fbf65.1583522277.git.hns@goldelico.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_111847_592557_76CD9319 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild test robot <lkp@intel.com>,
 malat@debian.org, "H. Nikolaus Schaller" <hns@goldelico.com>,
 linux-kernel@vger.kernel.org, paul@crapouillou.net,
 linux-riscv@lists.infradead.org, letux-kernel@openphoenux.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

kbuild-robot did find a type error in the min(a, b)
function used by this driver if built for x86_64 or riscv.

Althought it is very unlikely that this driver is built
for those platforms it could be used as a template
for something else and therefore should be correct.

The problem is that we implicitly cast a size_t to
unsigned int inside the implementation of the min() function.

Since size_t may differ on different compilers and
plaforms there may be warnings or not.

So let's use only size_t variables on all platforms.

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: srinivas.kandagatla@linaro.org
Cc: prasannatsmkumar@gmail.com
Cc: malat@debian.org
Cc: paul@crapouillou.net
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 drivers/nvmem/jz4780-efuse.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/jz4780-efuse.c b/drivers/nvmem/jz4780-efuse.c
index 51d140980b1e..512e1872ba36 100644
--- a/drivers/nvmem/jz4780-efuse.c
+++ b/drivers/nvmem/jz4780-efuse.c
@@ -72,9 +72,9 @@ static int jz4780_efuse_read(void *context, unsigned int offset,
 	struct jz4780_efuse *efuse = context;
 
 	while (bytes > 0) {
-		unsigned int start = offset & ~(JZ_EFU_READ_SIZE - 1);
-		unsigned int chunk = min(bytes, (start + JZ_EFU_READ_SIZE)
-					 - offset);
+		size_t start = offset & ~(JZ_EFU_READ_SIZE - 1);
+		size_t chunk = min(bytes, (start + JZ_EFU_READ_SIZE)
+				    - offset);
 		char buf[JZ_EFU_READ_SIZE];
 		unsigned int tmp;
 		u32 ctrl;
-- 
2.23.0


