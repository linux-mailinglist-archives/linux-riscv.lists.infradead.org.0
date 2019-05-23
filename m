Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6AF28CC3
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 23:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vh+DEtlbBBEKX3kwIsjfRJRXDw6S7/hK3GudKfXJG5U=; b=gxb
	O2LfJ4Yd+yyLjWItQMvNCS9Lz2RzlHiQVOcEkrPHGr3ci/G1LbFWGuAfMG1HJRvWCZsFifIh8hQxr
	zv+CrhUfKaZ449muyyHIKTsm0shATIEne+5GnfX+6t44BT07Xzi+6HNZthLSSBeRJwP/laKuncA2V
	Zxssot9Z1T7ivjpy9tUFI/XqwHpGAis8z0/q+u+y4ak0mqGwMy3j8jU83x0SVd0jHjH9frSqKa0Tz
	HqNDVNUtiuMUAl1YklHvtNu/3EdnZVntCpjalTjL3ydK/n4UBFtDPf/sWG0j8S6RVwmb3qmGjlyCa
	fydqF5y0CJjOe9PfVsfgJUlVHsIeISg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTviX-0000Aq-6p; Thu, 23 May 2019 21:57:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTviU-0000AW-MN
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 21:57:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id q17so3981253pfq.8
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 14:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=5bG8FDPCw5QDc0u1AHZFZoHnM7vNJL8HNA0ePZzdpDk=;
 b=Fl3Pw/aWVCJMn6SdFWbo1CqRqGB0mnVIW3e7yT0Jp6ccc/IaYhJGmLRABpEpkm4chI
 hzN1v219lL1YsQYsp8ulmY3B7xLKFqj+lHIIPnadVhUbsM1kceLOAUawiv/G4mx8sror
 d3mgOjFFOkJjmEG08rzXgIEcVizuEjC23kgWJoheQr2kmJWyapUxyxsN55q8T5Mz3arE
 A33k6AviekRkWiRb7uTEoj6NDqlxJYfQaEv7m5ZbfSUqcS+uRBsGdZcO7ruHsqiydTy0
 O8ju2Wgv+gipF2XFbz6z/arhAzMKA5M30weGAWeVW/ApnJcLxzNUYkrQjkDBZ//BkRrf
 tjHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5bG8FDPCw5QDc0u1AHZFZoHnM7vNJL8HNA0ePZzdpDk=;
 b=kZefbi9IvKQmPbyMyOtIjp9wVy+2VdaSWXWCxZoiF1e8wZCyhaL2h00OtF+FzdXFoB
 20pmNyvyHdepaE+mNpz2UGd+XSskJhHJtSQLbDJGdbZmkWm+7yEFq9vuDkSMcs4N0FoS
 jTXI29bVgc6wNfYCIBIHZv8C5J7kGaqcomIwiDID/crH/fr2zZuAoiwj8o0wgLSqDu4C
 vC31PUasG8MlcnYoIoNjkIWBhXfhWOpzirCcyulBmR08lKQNzRVTD29TPxjZ5CeAwGQT
 hAI5ItjJ4Vfi+KjcODYZm4MMekDvxJaBcZXskXZ2ZFREcBqWO38twQM1XilsOOVyU8CA
 d85w==
X-Gm-Message-State: APjAAAV3JSOziirpBDF/Cptu70AMKmtGsU0dH+gu5Boi4/qwHjaCZKnc
 272l47dMY1W5+paAudBwKgESLQ==
X-Google-Smtp-Source: APXvYqxPKvovRIfrtaL1O8c2k6QXUDaH/Pjn7UuZ6wkFFjX1eXQhHuYnrqOEHn9sDUqRH4JPFj1wjQ==
X-Received: by 2002:a63:1e5b:: with SMTP id
 p27mr100433871pgm.213.1558648658166; 
 Thu, 23 May 2019 14:57:38 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id n37sm321966pjb.0.2019.05.23.14.57.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 14:57:37 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2] PCI: endpoint: Clear BAR before freeing its space
Date: Thu, 23 May 2019 14:57:27 -0700
Message-Id: <1558648647-14324-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_145738_726519_46E44E1B 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Associated pci_epf_bar structure is needed in pci_epc_clear_bar() but
would be cleared in pci_epf_free_space(), if called first, and BAR
would not get cleared.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 27806987e93b..f81a219dde5b 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -381,8 +381,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
 		epf_bar = &epf->bar[bar];
 
 		if (epf_test->reg[bar]) {
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
 			pci_epc_clear_bar(epc, epf->func_no, epf_bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar);
 		}
 	}
 }
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
