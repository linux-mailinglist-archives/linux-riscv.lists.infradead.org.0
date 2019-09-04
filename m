Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB65A951B
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 23:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seU5uQqqze3OYc0XFwCTmxjD3j1gyNCR28vWE+F5co0=; b=rmrYgfRoicdSjC
	vclNUUoBEQ/rAlZBqcusetjHHlweFUwW1saKo3f/8u/tHZUaznbRUBWuh9ER+tlMDXFvnRs8CgkjU
	sSuYP5s3Tr5WJfzn6wcU8+jFpfX2JPIIEx9UaEWhZVbwjqYwsSAl34h6mScpJ4M/e95zYsseCF2f/
	8qoPUz4fnI70EOpsQ/o3IKVPC3B2j343dRVY/gkEOqpDSSAkRVZrzImyZzgxLICw4/UsccQ6xhkEd
	lqgiNPvpr1TiP06X3Aeg0md2zNsvNjR/VVs9/9Zh7DIAZbik0Ytn3oz8GVwSBxpvLb0qiijtqtt7z
	PPAXQGome2Pia9q1tthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cm9-0002vE-Rq; Wed, 04 Sep 2019 21:25:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5clv-0001mA-Ng
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 21:25:01 +0000
Received: by mail-io1-xd41.google.com with SMTP id r26so6260063ioh.8
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 14:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=gpnxUOC87Hy/bQFTjChPoPUmVY9m9l5TllB0pP0NeVk=;
 b=fTLS4AC5Y3ATB96yfTaa7NNHIOTrZhvDflTG9Orv7lWVtnUCwEpcmP20IMPHHfbAo4
 8IZUu4m/TmyBzD4IkRERocaj62+YgKlCnp0UnS9rfQgWahlhEFwbtw+h7L7OoNv6+ap+
 RJudWwoFvJWcbxdoKoVd/Td0s4qFhYYQFo5RvC7qc4TKPMc3MftX/S71qdKw2PGFipAO
 nIux+yq5b0aZNpSAGSZID8kbRRvqRopQ2NLanjEh0XZx17D9feHuYXCD+G3JbySlMwSq
 wlTIM/KfezSMBzPmjTFMtfGCmlA465gjVqqLLGaudRkH6Z3C1ADjcKPc1Em1eTAFMHrl
 oBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=gpnxUOC87Hy/bQFTjChPoPUmVY9m9l5TllB0pP0NeVk=;
 b=VFLxyd+cFMBSNuwZniy2Lcn10ivmEQF8Il011fB9Kx7SMgsuTNVfQRKMoI7EOCRigZ
 ZdV6kcbZtjuwPwr50Irc+hnd9T0UJECq2u+3ap4T6fXoCuLJ1XFIdE665Ji9TR8TRoBg
 ygrfQgRjYtnMwuHdYO0F5cLeKcwiDPDfGy2lJNxS/BGpId0VruVtT0VcDMP6rbvKBaH5
 wxDtodJXDVXtx68cFvXXXcPMqjYDB2qKGvGRPE6Re6TBDaoBpZxZABCQmqrKDtqYjc3r
 cny2e4d+j7ZvSBOipRWfHHb9zZd85VrhcKSEktIMWq9ckaIcSHjxASKGt3ZQ6nwoSl3M
 qc8A==
X-Gm-Message-State: APjAAAXLoxwVYZpPtaVQOjrqLPRqGjzf8SeUiztUKX3/JzDHgdqy1fax
 gbFlq7Ofq3sm7L5fUuxIWpxtwA==
X-Google-Smtp-Source: APXvYqxjjM03c8YncfiKMgSDvfLe10vnXrh6O5z7tHl/a/2REfqzPMyznieZD1T0RCpHILA7wU/D0g==
X-Received: by 2002:a02:cad1:: with SMTP id f17mr333310jap.18.1567632299044;
 Wed, 04 Sep 2019 14:24:59 -0700 (PDT)
Received: from localhost (75-161-11-128.albq.qwest.net. [75.161.11.128])
 by smtp.gmail.com with ESMTPSA id r2sm66211ioh.61.2019.09.04.14.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 14:24:58 -0700 (PDT)
Date: Wed, 4 Sep 2019 14:24:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH V6 3/3] riscv: Add support for libdw
In-Reply-To: <4cba2dfb6b1ef0df01185c6bce78a0a2867d0a7d.1567060834.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1909041422220.13502@viisi.sifive.com>
References: <cover.1567060834.git.han_mao@c-sky.com>
 <4cba2dfb6b1ef0df01185c6bce78a0a2867d0a7d.1567060834.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_142459_788686_4720EF40 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Mao Han,

On Thu, 29 Aug 2019, Mao Han wrote:

> This patch add support for DWARF register mappings and libdw registers
> initialization, which is used by perf callchain analyzing when
> --call-graph=dwarf is given.

> diff --git a/tools/arch/riscv/include/uapi/asm/perf_regs.h b/tools/arch/riscv/include/uapi/asm/perf_regs.h
> new file mode 100644
> index 0000000..df1a581
> --- /dev/null
> +++ b/tools/arch/riscv/include/uapi/asm/perf_regs.h
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

As with 

https://lore.kernel.org/linux-riscv/CAJF2gTRXH_bx0rwsTZMTnX+umZfVTL_iVnewPtVM50sLaqJPTg@mail.gmail.com/T/#t

is it possible to change this license string to "GPL-2.0 WITH 
Linux-syscall-note" to match the other Linux architectures? 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
