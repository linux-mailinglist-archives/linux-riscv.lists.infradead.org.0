Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBDFD5CF5
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 10:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+sXp2aN83h8JG/ZnxidwPc7p/28oDqXY0VLU3sQ0/Qw=; b=XucNhaCBfSnjlYcm4DmtuVVMgJ
	KgJTXUL7T7alqeoPZswQzbVCo0/HRB+15gZpH1f+FSZuvKQdVZ70MIhfNxeMkmF5gyxncXD6KGXE7
	4+oSPuJNt81dKH1/BvZMP2CX3/BJskasMdkRpMePm8lBNBuvdYPzuRn01kz4c6wTe6YsiF10PYj/K
	wXi5+qRHIlsRIwPrF1zMasFHnDuriE2UWevA6AZB7RH6iuhYnS8k20q+h2YRMwWoVBFl/PMTi1OTD
	3vJAMI1VwOPf03a+bl9okWptdY9WWEvwm665FNkwAIFtjNtlH1OIgQUmjk/PJP1r7i/k+FO41ixgQ
	R2ZD65GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvH5-0003tr-5R; Mon, 14 Oct 2019 08:00:15 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvFe-0001i3-0s
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 07:58:47 +0000
Received: by mail-pg1-x533.google.com with SMTP id 23so9629570pgk.3
 for <linux-riscv@lists.infradead.org>; Mon, 14 Oct 2019 00:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y50RYUfHeI2he8tBZWuhHfSekRhLtbksYVRqOP2O+os=;
 b=dIkMInmTpj1JrGLM5HMmR344M6bRmXAeYAMiVi8arb1/TJiPi/qUU0epeb2VIbDM4G
 LV3tlygKC4jC/jZvI/TTi1aSMecsChNYTb6670nu93b6lUDkYL20QDgOWQLg7FTCeez4
 X8Zy9epQLServXDvDch8Pk3PiKVzYr6g96SSq+yK5zc5ImZYUoncGr9E/hXE1UiCYKiB
 +eJ5zOPomeSEH68qwDViDJScGl1/s35QWBNtfxK/BCDsB8akxoVVse1MfiXLl/gWOB57
 IqRHEKdJM1AE9swDJi3rcCokwXduEo8RYy7FP6TrgWhL62naqVU5cXxMuEEmSgXFMq9V
 rl3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y50RYUfHeI2he8tBZWuhHfSekRhLtbksYVRqOP2O+os=;
 b=qQligrWxFSVacUBVJQ4KAQbXVZxZm4Y9dSrxixCqQMaVeD2+vj0n7ppx87xuLz7BCa
 9y5CHxsrKf7zjDz8HD++OVzR04jOe4YqVAoD3pwVJFz67LLBxk6sU1S0IHZRt1xIl4S6
 inJwTDAJ8kzd9clshIivDWwt+phAVAN4uGcqjgkg1yGh3hZAiF5J+s1caF9f07mXFIEO
 WgLqhCnZdQYKl2EQyA1u1NHgEA3pei6xv845xEpnruBGXNfWm2ziwt74Ekk+JapsS1Dd
 ZalOM66R3CZ+F/ysetJphpw6D+7CExk1XMT8h4lHpO5qD1ZHTzrWK1RUrZwPUhVbvr+J
 1SOg==
X-Gm-Message-State: APjAAAVI82TbH4GPojs6iDbcCvuRRhNGzS8dpONg5UJw6RGofRVCPg9o
 D6kndJndkqc4UTAmwjvk/qKrLw==
X-Google-Smtp-Source: APXvYqz1elBbSRERXVRjYUz8rt7tmJgHaye/RY5uPh+nlyfBFC3t6Ntdv7LmkGs0yOyrkFPOBQvtXg==
X-Received: by 2002:a62:3685:: with SMTP id d127mr159897pfa.179.1571039924723; 
 Mon, 14 Oct 2019 00:58:44 -0700 (PDT)
Received: from localhost.localdomain (111-241-168-233.dynamic-ip.hinet.net.
 [111.241.168.233])
 by smtp.gmail.com with ESMTPSA id j126sm16583137pfb.186.2019.10.14.00.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 00:58:43 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [RFC v2 4/4] MAINTAINERS: Add Green as SiFive PDMA driver maintainer
Date: Mon, 14 Oct 2019 15:54:27 +0800
Message-Id: <20191014075502.15105-5-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191014075502.15105-1-green.wan@sifive.com>
References: <20191014075502.15105-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005846_099250_03CEEA7B 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
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
index a69e6db80c79..62d5b249be65 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14778,6 +14778,12 @@ F:	drivers/media/usb/siano/
 F:	drivers/media/usb/siano/
 F:	drivers/media/mmc/siano/
 
+SIFIVE PDMA DRIVER
+M:	Green Wan <green.wan@sifive.com>
+S:	Maintained
+F:	drivers/dma/sf-pdma/
+F:	Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+
 SIFIVE DRIVERS
 M:	Palmer Dabbelt <palmer@sifive.com>
 M:	Paul Walmsley <paul.walmsley@sifive.com>
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
