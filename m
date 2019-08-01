Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8837D27E
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 02:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrTsMn/rHv9GjunO3wPLZ1Vq1rtF22MoM/7Ap2j/iLA=; b=V2CE9MucGTVvTD
	mSOFHmDRAP7cHvM59C6FuXGeDCsw8XeDK3mAzK+VZbmpMu9vJXWc/NmjTzgTAqkGjk1xgzttiWBfB
	+lFUnhhRSTleJqBzAdqHr7GrMCNPs2DeJ8d0vC4s3UmZWv/S3f8Bof3g5Hi/KAq8kRn8YWvq1qHAD
	vpIo/0sO9e15+BcyeI1TFOCYUn6iyde/xza22aBoBHdJ9l2XshD4KAlh0NiPRz7SXab7ivRlq6IoP
	Na74LLT1P8VViD2+eM0FyfZJZUydS254YhQalgmurlTlFub93CRPlO6zWdPErBv05kbdSS3vG/UdT
	KD3PEYsj1/mme9QkjE/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszQj-0000N9-HC; Thu, 01 Aug 2019 00:58:53 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszQc-0000BA-Il
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 00:58:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564621127; x=1596157127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OremRQyuncth6RJmwcRirDjBWRulyVTwgRdrAhtDf+0=;
 b=QctdX9MDKQFTL0elYNcb39SbqCd8jy2cPCHDdnJ3grC18AFZ++AFm/7I
 ntLe3m5WijdJqSaCM8BsFhkRbxXVd/JZfx+SnXXqBoqGAkHWUhhXDdGR4
 4MbKev/XFS8FUUHL7AZcJroRf9HAnalA3jxAkm/hHE0iXgOCrW8CZBde8
 uYGQDMChTTqfcHJ4NzBypeOmez/THdHGmR+2gQXrAurPNN9Cd33BFQvkI
 6DraRfMS/gEjGuVNmuuOvd+Q6TeNlaeDR1e7+gSuDijBtN4GDVxIwi36R
 gKteoRMm0dBLmFIh+iWTge5m4r18+aauBE84rzgEyxQmKpmZRXmi4dikq g==;
IronPort-SDR: HcuZa25zCBkXI4CkA7CPXQ3b2r+L8NybewNg5nrEpTJM+GOF7bfGfH7jIlmw/97tT11v9scqQZ
 eDHvQdnzuNNely1QNhq5HTVNCr5uOTD8XoN0eQLzhXwJRFaJReIHDZt1axW6LVDaCnSV1cwDvZ
 Bi4+8NRB4WIs7JIN9VHmCrvRsHG6amgVpWPYJZL+32BnnGdxOMGkoZT8tuLuPGZMDrtJkz/vB5
 tVLTPHcAzvOVx/0outPrhn6DPS1ZkabRrx0Mo+AKHudJDbPQ9NkA3LvpKU/8c+rzP2/VuHjKP/
 kTE=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="114650432"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 08:58:40 +0800
IronPort-SDR: QmjOoBwZ6xxGACS+Rp3CQ1uca/OSQ0iPsNKmJ1cPcK1WXeOfWUSC8KzNFionD4f6twTMOaOWgG
 vpx8KCZT2rDv7R/5hQORTuMOG+KmEy/v2TtqSDdPIlXRJI4hgyCfA19brEOSgkFjGCD3glXgw5
 Rh+fYdBlXHWVwwUYxKIkB9ZMDIDmMO1nsUsLLFyGpYhpoJpqAzcGKvf+b3uK2RL+YZgB2OOfmC
 342JhIxMXtsfYpcI6co8i9A0vSQdC6CaxDxOOVAcxEPqsU8WzBwkYBgJvNEs6JxMuaUONuggRI
 HoMJjLVCXW4bUPoFnrRTyNqI
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 17:56:40 -0700
IronPort-SDR: buJklJ1NZhn+ariLbhCXotWJ0iZLK9+V0P+ilob/EJ3b7KF0rougKipOcdZ48jxK65bn8oEu2P
 Zjg8UtNyIcrRjfTB/NiXIejCMibCPCfF43qg+YcUA3ZHDXSquSyQhjE5kqsStoZGkDt1wIvG34
 4LJOzaxTWTVbMCRx1NFstKqIE1JzMDnPqy9AZsrZuoaSVwsAFWBaza8hM5aL/FoZjm3uca2zDs
 CsZXi0pKH1FhccbBXWHCTzWRHvnWGzaNxQZDORnH54HFQlJYdactsLGl17bgjITsftlly8lqIP
 F3Y=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 31 Jul 2019 17:58:39 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] dt-bindings: Update the riscv,isa string description
Date: Wed, 31 Jul 2019 17:58:43 -0700
Message-Id: <20190801005843.10343-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190801005843.10343-1-atish.patra@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_175846_672587_AAEBF720 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since the RISC-V specification states that ISA description strings are
case-insensitive, there's no functional difference between mixed-case,
upper-case, and lower-case ISA strings. Thus, to simplify parsing,
specify that the letters present in "riscv,isa" must be all lowercase.

Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c899111aa5e3..4f0acb00185a 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -46,10 +46,12 @@ properties:
           - rv64imafdc
     description:
       Identifies the specific RISC-V instruction set architecture
-      supported by the hart.  These are documented in the RISC-V
+      supported by the hart. These are documented in the RISC-V
       User-Level ISA document, available from
       https://riscv.org/specifications/
 
+      Letters in the riscv,isa string must be all lowercase.
+
   timebase-frequency:
     type: integer
     minimum: 1
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
