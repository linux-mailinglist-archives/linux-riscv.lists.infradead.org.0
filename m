Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE14F29E1
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 09:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eBxI/tox3Gru/2x521BUEkiv8iruuDv1mbQqVLeCbDo=; b=noWGgzfvYbHj2sribNIWtuw1Ra
	38YHEzLSxkbNNJX0aMr24rxjW+TMGclXEN43nTAA8R+4Qu1rCcyLscRq/JkZXCprYQmgOrd79Fjh8
	lUER+Za5uXnuTBmpK9aOcC+H/NjiHdJG3iHmjc6a7k4io1cmQVs5v0mcy1I5lGZRM5WVjYmLvSiZG
	gdCcwGF06i52N8kG7C5D1+7ia75ADpQB0nO9ofCuVxye/JItAmu0qe3pvvmhzleWmKNyy8IYSni2i
	I/66n7L1OUT0NNZfNJpTMF4B4exsN95ipZ1GJpOn7gbFcPcNWLXgZV+9b6b098Esqfb3I8bmfGROR
	z12KQxog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdZ6-0006k5-16; Thu, 07 Nov 2019 08:54:52 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdZ3-0006jm-3l
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 08:54:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id c13so2139312pfp.5
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 00:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=REr9FfqxVfrOvMfCnBHOUFhY/pw9eZJd+cJfs5nnvmk=;
 b=Ub5AuL2yBlrx2kEGok4LLkMsGs9Tg85TheBaiJPVAl5Zup7IALWGjeBGQNQxT66fGQ
 /+Kx4qiwPKcqzjoOsuuQL20s7hdAkUp1V5GqLlC4CyA4Oh5Qh1iF6hi4f+GocdYoQJOI
 TEVLqzJZE1uOsHzBekKouNqI77hN5vukb/5zyXZIj5F54WAxVrtm9Xh3GUaULvUhz4+v
 Cn4dummdKET9/QWP9fYXYzcRNChTj9x7K4V/zV1j2BojghVhhhmEVvq3FgdM+YbDMPip
 d8lOL0vcQmJYZ5r8tUheQJ+w2J6FE+u4Xwizyk9fU7IUU2M56Ynbz+vgU6uagWRKDDwL
 SkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=REr9FfqxVfrOvMfCnBHOUFhY/pw9eZJd+cJfs5nnvmk=;
 b=VnWP3+TVhtfNVxC+cM6+B2nQxe+q1kKiUiyfye74ffsnZNVLg/CdloonrgXpNTQ1gp
 pbYF+tToKURkPxZhARhn2BRAtn83egnx07Icu6RBQ3C5mRlLMVWMopNSr2ViHtgLexp5
 /FAt2FbH6/RKlXtsiivdl9R9ChHiRZhO9lGR6rF+vMcuU/LPstrKD0KjKRxXmWRXjaKC
 qwoJOhJAHEIrXIVuBwWfFu2xw8gFlhCE2CPz6hiCjaBHrK7Sa2SkrCTOmchMAjZahbyP
 l6L8ev9Yqdq/d45yFyvDmSjpy4AEeP9n0/3QEYNMxnKdztWJTTISyJCunb/LCUmRmxDX
 AMVQ==
X-Gm-Message-State: APjAAAXwIBeG8YoEg7IM8pQZcEF19fBPwdVxLyyqhmuYjc/pPqRfJKog
 TW7FOroaVh9NoorIc5LdvS6Qng==
X-Google-Smtp-Source: APXvYqwDFuK/xyGSDVKNWtwLPNsCCdPj7+umcyIkizF5k0puUXO125ZdEGWjnl7vA9pTpceKyeB6Bg==
X-Received: by 2002:a63:91c1:: with SMTP id l184mr3073440pge.57.1573116888516; 
 Thu, 07 Nov 2019 00:54:48 -0800 (PST)
Received: from localhost.localdomain (36-228-119-18.dynamic-ip.hinet.net.
 [36.228.119.18])
 by smtp.gmail.com with ESMTPSA id a33sm2402361pgb.57.2019.11.07.00.54.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 00:54:48 -0800 (PST)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v6 4/4] MAINTAINERS: Add Green as SiFive PDMA driver maintainer
Date: Thu,  7 Nov 2019 16:49:22 +0800
Message-Id: <20191107084955.7580-5-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107084955.7580-1-green.wan@sifive.com>
References: <20191107084955.7580-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005449_152064_D61DA5D1 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, linux-riscv@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update MAINTAINERS for SiFive PDMA driver.

Signed-off-by: Green Wan <green.wan@sifive.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2a427d1e9f01..d319f7f33407 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14785,6 +14785,12 @@ F:	drivers/media/usb/siano/
 F:	drivers/media/usb/siano/
 F:	drivers/media/mmc/siano/
 
+SIFIVE PDMA DRIVER
+M:	Green Wan <green.wan@sifive.com>
+S:	Maintained
+F:	drivers/dma/sf-pdma/
+F:	Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+
 SIFIVE DRIVERS
 M:	Palmer Dabbelt <palmer@dabbelt.com>
 M:	Paul Walmsley <paul.walmsley@sifive.com>
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
