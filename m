Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6874748570
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 16:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQrwqNqL0cKmxEyn/+Z2zj0uIjAr4rmy6BX3VxfCGTo=; b=NXdwa56z0MEjwh
	ZYR6EuSYSObcOdipElQBL1fAhrCD1GVkgp0eHG26grwAe86Oaxhwye8kofXFGIz0F3mbUhevv96jA
	2zoMuehGqROqgULrkjAchal9eql8xJzTYWZcqjiWkVB5pFdQQQGFYEqrnpjnZ3UzPLMdlhR4Rh6nS
	NPp/RTh8bZziypnGqykk3RJgMsk/bILf/Py0Bv/3QNnt+tkFMYVXiEK0Ctu2n0Nc5aFs/qbopVdod
	/SXtWy9iE9rUjB4Zo8u58PKg+ap29jHdoUynAqK6tws865AyW1FQQB18QHDWa+7ExcjTOYjswu+bs
	dlFs1tPcGWvwjJGOATPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsfG-0003Xe-96; Mon, 17 Jun 2019 14:31:18 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsfC-0003Wj-Rh
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 14:31:16 +0000
Received: by mail-ed1-x542.google.com with SMTP id i11so16514887edq.0
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 07:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=IwVUj5pq5OLDmAp1JSdo4io4ScU2qonTZKXdPbrw8s4=;
 b=lsCotGah4wxzar9WXO4RtmCa+T7f4GXU99eahIhtZD7KLG/+lrSWGWkpbWmpqYMiWx
 rEhKP6GXc/bYy1LSwzR2zoJTkscTE/cghCzcYfX6ln66PUXJeu1J9cCa6eYYsAKMA+R3
 pnWoJ40fDo7f6h5oIVARQWweERWfeE1BIZ+neqv7nOS+7Gqnly1EhGMPAwq8y1EMj7pv
 J7c0GRCEuY1clsyBdt0eQUYfbtyzE28uh84Ctc3CZRbpXXkQap8ZDgx7tC1RT4QsURUH
 0ySdr2yxQ9nrU6F0ONwfhHu++z8sFOwJoQVyy1EZK4ggmHuUPiIGSn/3nMk8gz0uAFP+
 YMfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=IwVUj5pq5OLDmAp1JSdo4io4ScU2qonTZKXdPbrw8s4=;
 b=D4Eeznoq2Caj2214U4IMf7B+Z18gtFxZmLIzXU8m8VITkcIXrYVqFDcdIZwMrSj+jM
 k+DmnIk+KZNrqFVclUuWIDl0zOcAJ2j4EPZvXf7p+krXmjAowsKcop1RUZQWy7/phNRK
 c1ibUsZYVjfuDmHwt6NG45QpKJ1Gm1+d/8TveLPZe2KxXpvPrrstLkbYcIIVuC8KqNSd
 PEt+QZKt4YKqaCTatR/5VGScOqzxbXTfjPOu+a/xddRBCDJJbqiOR9iNVjWrUs+Q5F5l
 bQBgzbucWX+XzIDvR08kY5gMvL8v+ATgxi3QTI8oxc4+7eTpAAK5T7rCkYSRBzvBf5zy
 TO9Q==
X-Gm-Message-State: APjAAAVCOf4H4q98GZLcXZMmpVjAQp5/fwpuvwlpGoDD5GJ5MKjZLadr
 J4WCqEEgsiSafcUor0HRLM2bkw==
X-Google-Smtp-Source: APXvYqzpHrWrEAzx/7/mqTJhA435fEbLhaRoVdoz6kugESqq6Se6Vl5OTNNtskT2DjaSsd+cQI7MSg==
X-Received: by 2002:a17:906:27d9:: with SMTP id
 k25mr54021062ejc.194.1560781872048; 
 Mon, 17 Jun 2019 07:31:12 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id 93sm3738242edk.84.2019.06.17.07.31.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 07:31:11 -0700 (PDT)
Date: Mon, 17 Jun 2019 07:31:10 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rolf Eike Beer <eb@emlix.com>
Subject: Re: riscv: remove unused barrier defines
In-Reply-To: <1862877.fiP6YxjBP5@devpool35>
Message-ID: <alpine.DEB.2.21.9999.1906170724240.32654@viisi.sifive.com>
References: <1862877.fiP6YxjBP5@devpool35>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_073114_901746_12A1AF68 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019, Rolf Eike Beer wrote:

> From 947f9fe483dc6561e31f0d2294eb6fedc1d6d9bb Mon Sep 17 00:00:00 2001
> From: Rolf Eike Beer <eb@emlix.com>
> Date: Mon, 17 Jun 2019 14:22:37 +0200
> Subject: [PATCH] riscv: remove unused barrier defines
> 
> They were introduced in fab957c11efe2f405e08b9f0d080524bc2631428 long after
> 2e39465abc4b7856a0ea6fcf4f6b4668bb5db877 removed the remnants of all previous
> instances from the tree.
> 
> Signed-off-by: Rolf Eike Beer <eb@emlix.com>

Thanks for the patch.  checkpatch.pl flags an error on the format of the 
commit IDs in the patch description.  And there is also the spurious mbox 
header.  These have been fixed these up here, and the patch below has been 
queued for v5.2-rc.  It would help to run "checkpatch.pl --strict" on 
future patches.


thanks again,

- Paul


From: Rolf Eike Beer <eb@emlix.com>
Date: Mon, 17 Jun 2019 14:25:59 +0200
Subject: [PATCH] riscv: remove unused barrier defines

They were introduced in commit fab957c11efe ("RISC-V: Atomic and
Locking Code") long after commit 2e39465abc4b ("locking: Remove
deprecated smp_mb__() barriers") removed the remnants of all previous
instances from the tree.

Signed-off-by: Rolf Eike Beer <eb@emlix.com>
[paul.walmsley@sifive.com: stripped spurious mbox header from patch
 description; fixed commit references in patch header]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/bitops.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/riscv/include/asm/bitops.h b/arch/riscv/include/asm/bitops.h
index f30daf26f08f..01db98dfd043 100644
--- a/arch/riscv/include/asm/bitops.h
+++ b/arch/riscv/include/asm/bitops.h
@@ -23,11 +23,6 @@
 #include <asm/barrier.h>
 #include <asm/bitsperlong.h>
 
-#ifndef smp_mb__before_clear_bit
-#define smp_mb__before_clear_bit()  smp_mb()
-#define smp_mb__after_clear_bit()   smp_mb()
-#endif /* smp_mb__before_clear_bit */
-
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/ffz.h>
 #include <asm-generic/bitops/fls.h>
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
