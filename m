Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE85C9A90
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 11:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6h5Ljh+EBOmBlKNB9t6IGr7VEUaN2auRaFzn6uZDNJU=; b=elOKzDbon5F6RO/QWpu2aTGuCL
	R/Gie+6Mbdl7lNIZ9VwT/b7S7IMJnYevRwBGZdO90lJWXfykYsIxyKmHAi+xzQzLIB6pE5HrNeYbm
	b+l/x/yh89Rocf5JJwNXs1hDuIr1c2l6gTIIMOOwSFYmt88E4s+S9a8T5g88ptLEyu7FD7mSep6eg
	eBqPQCcDd+wet+dpY3ub8QJMXvG+nEDeZc6U6tWcKAXTogojZ12E85nc5iWADQNAiSAjSubwRwOxx
	42YbiDZ+2IIvi/oDd9ODJcUU0qW7RQpvtrPoq7Js0U3tQcOhtq7hm0GTbEn3oifd+E+b2YAKFKdCs
	ZNiQZggQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxCB-0002n6-36; Thu, 03 Oct 2019 09:14:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxC7-0002mZ-L3
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 09:14:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so1334369pff.6
 for <linux-riscv@lists.infradead.org>; Thu, 03 Oct 2019 02:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2vKbldndzFc1Ual386BQ7E3WFEYeo8xZQGDApFlT8dI=;
 b=f2YDZuhud4dK2X9PKXRDWQgtsC8YmWa/pMHZn7PGBMkvcvIh5c0kaqJBzSrD6W48++
 ulqgy+niqIsVPTGUN1HMRou0c9gxKQMNxJ7BOTESuppvEH+io35C1L5HXrYtHBcZ7nBz
 aMSmQ34saNLtImo5kikISUDY6J0KXI3u84MOhaACp/b95sW6JHlwgzMzP0Lbz8XL+Rn0
 +LskHMYAeCDMFrOZ+ajkUmy2KTW3ylMORBzrrvdE9xLD2Dnl+xLrFoR+tZPGkLBg4AVv
 reKHZVmG9MkgZ56l47Sc01EHOPKqPZYyE7gVpwM8GNfmTKyFwpvxj2hiAp+nOQnsdmee
 /5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2vKbldndzFc1Ual386BQ7E3WFEYeo8xZQGDApFlT8dI=;
 b=UUEFUiUMpA/ueuTKobTJ6xx6DteyF2u9ZuW/xNCbbmspXmPVoP11U9WkBz000GtHUN
 ug0m4FrVfwzfRrnxy3gFD+HS2eOYCuFBVBHq5ZifgyjK9mO/+O03UgoPfIAQ6rTg31+/
 pYEG5gFyvNcG2d51L1tHPlwoyBevnOWJ5Oc0z1eyY6/uSKTobzCy5fUgCpVUnWUXBTcg
 XEN6gTtSdpEaRYcVTzEWSoaUZldIMJKh6uLIwQtmzhiCtLNa8t+cVOqELLUVPoHqUK2X
 W37jUK3NXsRmG0AYNmyA3K54JIW8WcmkJv3YyMkpSzMyBjvv1YJHLoNJIT7MWqoVYK8j
 K4pA==
X-Gm-Message-State: APjAAAV4m/rZMkgm7kGUVMPNvNy4hSCeDwQNs6BlT0WAEnv20tm9VFZH
 gSpc+omoWMLR0slwb01sKKadnA==
X-Google-Smtp-Source: APXvYqzcQ1k2avDmG3DyS4ozTUbUn772X9S8sGX+mjjQG1JqrLKlw/f6wAjumUBurg6Y5zOWSte2uA==
X-Received: by 2002:a65:56c8:: with SMTP id w8mr8535370pgs.100.1570094082866; 
 Thu, 03 Oct 2019 02:14:42 -0700 (PDT)
Received: from localhost.localdomain (111-241-164-136.dynamic-ip.hinet.net.
 [111.241.164.136])
 by smtp.gmail.com with ESMTPSA id f128sm3445422pfg.143.2019.10.03.02.14.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 02:14:42 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: linux-hackers@sifive.com
Subject: [PATCH v4 4/4] MAINTAINERS: Add Green as SiFive PDMA driver maintainer
Date: Thu,  3 Oct 2019 17:09:04 +0800
Message-Id: <20191003090945.29210-5-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003090945.29210-1-green.wan@sifive.com>
References: <20191003090945.29210-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021443_687286_43BEBA8C 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
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
index 30a5b4028d2f..6c12da0a324d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14779,6 +14779,12 @@ F:	drivers/media/usb/siano/
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
