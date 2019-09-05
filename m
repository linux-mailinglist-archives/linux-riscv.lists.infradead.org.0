Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BFBA9D81
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 10:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tIzsJtNeDYc1WUBA9dNiTc3XI+qCNJ5FHgfJ73l2x4=; b=OAt4RFVFOjaJHa
	MyBC24MtqmWScQkYCpHlsfbEPYlqj4SzIfBkJLPWaktWRD+cYVh8Rs0xuogSLzIlsXmgPoZphfI+M
	FOC0fzq7j8k7RR3WD7VMxq5cc6Siq5frZIGKNWGsxFFiwMY8a5J3UanLhRMzMM+QDn8ZLr9lhlc+J
	qjL57uL3YAkVxEUUoOyQ5vQmUbJTBm2RhgWuQd1bR5AgG9HOC9+9WQykvNwe0jS8SbgTRm0AIkhf2
	9YK7Z/0YlysgnqgIT/8lNwsZAFg5vDSMCJef2GVszrA8cLflnGad61qjqrWOBKNK8EMKz3mbjqPjE
	qKnnvWT+2KUdHp6Z/BSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nRz-0005tO-0o; Thu, 05 Sep 2019 08:49:07 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nRt-0005pz-5L
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 08:49:02 +0000
Received: by mail-io1-xd44.google.com with SMTP id h144so2988105iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 01:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=1eeK+WA7aUVRMQ/h1RkflapitBMlit2i5ZV9Mi0Fs00=;
 b=g981oRJqMgJICkou/DXYf+U5olh2hjVu6JDto0dJd3+ab/tGP4WsbyQ95a6Q7IYpqT
 R4BT+6s3r7cGCvQEahGzRlzHOQs78FK6WOqvDDmz9Iv+JnPEGDPozJxkNo/i81EHwL/0
 yitdFdOvxihfK43Galav5KHlNATWdV3V66RcD7Tfm0y2Ux7vzfQv1j89U6KfXWXh3fCY
 dGv4p9hKlQxx+AuksKw1QGM5ZxdKyCCQVG3TwGUM+ntZMON5NlGgaUiPlVna425+JD7R
 BXldeTv4ypiSY6A0PwruF7CYlcq2BUcO5Z61UXldde8I8MLxnqcaxM9VYiOVrd4lfxja
 wSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=1eeK+WA7aUVRMQ/h1RkflapitBMlit2i5ZV9Mi0Fs00=;
 b=ULQYpxFJD7QYiOkjbrZlcgTMtxKBO3uHco+Dk4vrkZ1rhkLiSIFplmIbWch5R2QtD9
 OjOZzm6U6Fzjv8NGGqlCbyzy8S47GdscS7Wv7lvzuIpSZ4Ns0mQwYkTXNSwvUMDKob1r
 k4+3rvi5nU3mKVK+azX9B7VCHE0iJnCIqOn7grL6E+jWf6xL4e06Vi9c6dRwYKJJSYE1
 MS+MekBGwVJK7yL+cIpkaandkvA9qtu58o5P8aOuToIzV1f3CgAp9ktLJkpUaBo8RjO8
 CagQNCo6oaR9AeU94LyAQmv7cjRnmSr0eRMeR93rfX+MAMFIYeVn4vmuspNgV0q4dpir
 aPSg==
X-Gm-Message-State: APjAAAVRI2Etr38gO3ec8KzPsSdVq1uy+dgfOQCctyNXxrZWpq7w5gVU
 7wQdWNoxpFQ8umujV4FYV79cyg==
X-Google-Smtp-Source: APXvYqyTh3yP9AZQxTatchErw8I3HiC3u8LkWfFsymQndxv+9jnGm6yp8V6B1HU45sVNGBmOvbvGPg==
X-Received: by 2002:a05:6638:627:: with SMTP id
 h7mr2933684jar.33.1567673340554; 
 Thu, 05 Sep 2019 01:49:00 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id f7sm1200005ioj.66.2019.09.05.01.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:48:59 -0700 (PDT)
Date: Thu, 5 Sep 2019 01:48:58 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/6] riscv: optimize send_ipi_single
In-Reply-To: <20190821145837.3686-4-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1909050147020.27305@viisi.sifive.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-4-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014901_218493_84E1D8BE 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Christoph Hellwig wrote:

> Don't go through send_ipi_mask, but just set the op bit an then pass a
> simple generate hartid mask directly to sbi_send_ipi.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, I fixed some minor issues in the patch description and queued 
the following for v5.4-rc1.


- Paul

From: Christoph Hellwig <hch@lst.de>
Date: Wed, 21 Aug 2019 23:58:34 +0900
Subject: [PATCH] riscv: optimize send_ipi_single

Don't go through send_ipi_mask, but just set the op bit and then pass
a simple generated hartid mask directly to sbi_send_ipi.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
[paul.walmsley@sifive.com: minor patch description fixes]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/smp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 2e21669aa068..a3715d621f60 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -94,7 +94,13 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 
 static void send_ipi_single(int cpu, enum ipi_message_type op)
 {
-	send_ipi_mask(cpumask_of(cpu), op);
+	int hartid = cpuid_to_hartid_map(cpu);
+
+	smp_mb__before_atomic();
+	set_bit(op, &ipi_data[cpu].bits);
+	smp_mb__after_atomic();
+
+	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
 }
 
 static inline void clear_ipi(void)
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
