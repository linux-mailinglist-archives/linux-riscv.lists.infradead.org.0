Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F770E6DBB
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 09:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZpA9rJOBc0vdGwcVc0LaABOj3k38qlJKJqVnAkvekro=; b=aCQ3AogsKUs2MjNVFxH3Acwuky
	MzeA8ALA2NYt4nwCEow9jm7N4SrKND74Jl1HUxA1b543WjhmFMkGSHN3BjLilHXUDPPn65PBSUHpi
	VOefGDTVNY7Fvu5TT422Li7tKmAFo9M/1edCCp/Eay6WeWJag54E9vrLyCQfKAPxg3gNkMPV477W3
	jcvmfZhv8QX6iNVrx+OeRVCQmCsYSVhSkIFJ6k1LiTQTojQ/+zVPQobRzcMBwaoqS9re87tBWYqbI
	9sldrWPuhXOhHsBjZkdYlGMBXM2NDUhtCJFHIz5zeOzF24WDee1ajMJMA+9b0GznHn2QRfbxRi2hX
	7YfOB6iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzxM-0007ce-Kx; Mon, 28 Oct 2019 08:00:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzxJ-0007cJ-G5
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 08:00:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id j22so352340pgh.3
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 01:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Teb+nHfVj7QdEHZ6F94pdipxxAtosBBL8l+HZTtIm4A=;
 b=buaiJ3wCZ4lN8R+UyQC0KOVQoxUBt6E4y93SYARVuR1cEQmv/6DKg4GcFkpHRoxyuZ
 owizS5k3E6U2+4tNLCi2VzzTujDhbLZADv9SNpK6h5Mz6od8pwnNy7juEGYAPj9frn3F
 yMPdfWr/m297s++31zAjbgfMq5FEv0rtrzsAX4Y2BOTh+VgZTwFpHrM5maha5RYfJ28s
 i8vTW8T+L+PZ6mcbUUiC2fx9aHpoqrolWGKjjfqnrPFR5V91EuX3/bL3FfVDEPg26AcG
 iWZwa4z03A1Bx0nETUvG+uyojlpdadDnzPWailVA/qhmAwdUW2H8KxKlfpRvCsiEm6Iu
 D7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Teb+nHfVj7QdEHZ6F94pdipxxAtosBBL8l+HZTtIm4A=;
 b=g0yWe4SIDxaPeIl41LZ5BWFd7kT/If09FLnJeV1e8+00x6jyznlrtIb0L777DyPLla
 6JcejjMZaU7h8BnH9/yiHxAPLKy9/h7mOK9+XGECAY90O1/6/OdhpmVKIcExoGZEJWCn
 brDMpDnnKjEKukLsVI2LsiRq5oOFQVHiY3Mndsi5FUfPFKqfkVEjugiTlUM0MfltU+9o
 +lAP4hmgvPVvQRPH7DW52RqoyYY7WFtJSHO8AgReCHA5vqXhsi8PLC0GuLSTMVkDjka8
 qnyUwbZ7PPL2AGyxMZ9UkMfHX6g9O50Uo6p6FKflaEtGXF/12qmG4uCZ1LOrLWw1eNFX
 hGQQ==
X-Gm-Message-State: APjAAAVS4DehovbfREpMswOhk1YWh+f+i4h7XyIbbT3E5uU29u51gsoC
 Od6Gi7VfsCaWVrGtp1TRYjRt/A==
X-Google-Smtp-Source: APXvYqw5o9OQqVfoQBgItzsJbWV2pBxZDfEZpu9OM5nA5X7iLkchHyEIoGZfQuSvRNFLCJ9raZ6acA==
X-Received: by 2002:a62:77c2:: with SMTP id s185mr3990854pfc.129.1572249648961; 
 Mon, 28 Oct 2019 01:00:48 -0700 (PDT)
Received: from localhost.localdomain (111-241-170-106.dynamic-ip.hinet.net.
 [111.241.170.106])
 by smtp.gmail.com with ESMTPSA id y36sm9504752pgk.66.2019.10.28.01.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 01:00:48 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v5 4/4] MAINTAINERS: Add Green as SiFive PDMA driver maintainer
Date: Mon, 28 Oct 2019 15:56:23 +0800
Message-Id: <20191028075658.12143-5-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028075658.12143-1-green.wan@sifive.com>
References: <20191028075658.12143-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_010049_538580_12FA9AE7 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
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
index c6c34d04ce95..330fbd050059 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14782,6 +14782,12 @@ F:	drivers/media/usb/siano/
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
