Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF8518ED
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 18:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:In-reply-to:
	Message-ID:Subject:To:From:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiF6kS9zKvK0JqhqhF58IBIizDoO45FP1Bbvc/XdleI=; b=SW+SZMQ5dQ8KGM
	utfYlhI8QBVER6pwfQQh/G58/pUsplIbhMhfz+TNBW88Ck0ggSwS/8inm3ULiRfRylA+JpM9l1bu4
	E5mtiF5NphlmvwMtbvdpGpGaptGSnZh9FKehLi3136REtILmmwme45v+8yWhrCi1u1LJFFqomi1Zk
	yFvpeeJrxCpsYMLmq0TbzqLv7G00HtYnxSSts669qEFQc7CMsYdZH34hqMd3EOtEAc0Jp2o433ZMI
	g05jYfelpLK2jnPTHUdhL5fGc9toC2CRUPYL4+1oUmu6OiD5FZwTfIcXOIhF/5xQhZsj4+GO9qxg2
	eKXnWIIOuayEAF+Hyyjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfS6L-0004nw-8v; Mon, 24 Jun 2019 16:45:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfS6G-0004nV-Tk
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 16:45:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so53133wma.1
 for <linux-riscv@lists.infradead.org>; Mon, 24 Jun 2019 09:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:message-id:in-reply-to
 :date:mime-version;
 bh=DzGlPYsIYshbD5peGKifO8l46y0lKsTTIsT4YjNzT5E=;
 b=d6bKmA1qg0uC0Ie/B+rKeOICs7HZyVW8m4zo5CufVyG8tVEYsVvxLbE/SN124rH9p3
 06yUcEvuoj+0PcroXaMiWv8HRvVCQeLqaMGAjw8YiGZA+5OdDouYUSYBBjcOtnTezmpB
 mSev/yoU1rb28ZElCOVgrod/eoj6MrAaSrfoqh6HliP3cARmrjnP7lmUG96MesS3+Ku0
 J5V5MSG5H8SsQIMgau0YDGSiMF5J1gZFIuklMrMYbGDIDGDq/l78UhoMTq3J/cwJ4v7X
 mPdQecNR4EHgr/JIOVaSbkfVdT2FxX1qxupmrqOEyO1iKOT+/uX5o+xyqn6TbPQHpqBd
 X2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :message-id:in-reply-to:date:mime-version;
 bh=DzGlPYsIYshbD5peGKifO8l46y0lKsTTIsT4YjNzT5E=;
 b=EiCjjSfoysDwVBe8X1x9q4IbkMtKL/0X94TFbohODg21oroKTtPWD1m2CguuJoleN3
 sHSe11AVpNmf5F56nuekPRxVQ5C09HGHPEMl1IgADQK0yXfhVarP3rHJp2MUDRMIj1Uy
 yLrCtjs6U1knUv9RRzJMl7YK/slrMTJTJdhZO4FDzD57KU7lqWcrT9j3toT2IC+Ev7Vk
 sBXTrW6I90dmdDZmYZ8cjUBbexDdjcRfDVINL/6ulgHTE2gCPh38VGCrkUL0TsgNmluH
 ReS5nGKsQWQmvJdsFGKTjARjGtbck/kkmlQ0koa/PfP+LGW+SuxtqeTpFPfMmg6lBcHO
 3E5w==
X-Gm-Message-State: APjAAAWKoHd+Q903ZH9xEJI5E5ArRhczoCA0vUi2UEDXMS0vTWmRLpkq
 z84sw2F9rjNrVJUFYiUqMjG56g==
X-Google-Smtp-Source: APXvYqzCOhY6pbib85YShe2BKk3kBMiCErh/riJuTO+Y3VGhfakrMQj54c4JSjzoIeVurBCR7ItggQ==
X-Received: by 2002:a1c:4d6:: with SMTP id 205mr15402634wme.148.1561394746919; 
 Mon, 24 Jun 2019 09:45:46 -0700 (PDT)
Received: from LAPTOP-V3S7NLPL ([217.38.71.146])
 by smtp.gmail.com with ESMTPSA id 15sm21315wmk.34.2019.06.24.09.45.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 09:45:46 -0700 (PDT)
References: <20190621225938.27030-1-lukenels@cs.washington.edu>
User-agent: mu4e 0.9.18; emacs 25.2.2
From: Jiong Wang <jiong.wang@netronome.com>
To: Luke Nelson <lukenels@cs.washington.edu>
Subject: Re: [RFC PATCH bpf-next] RV32G eBPF JIT
Message-ID: <87h88f9bm3.fsf@netronome.com>
In-reply-to: <20190621225938.27030-1-lukenels@cs.washington.edu>
Date: Mon, 24 Jun 2019 17:45:45 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_094549_008730_BA03046A 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Luke Nelson writes:

> From: Luke Nelson <luke.r.nels@gmail.com>
>
> This is an eBPF JIT for RV32G, adapted from the JIT for RV64G.
> Any feedback would be greatly appreciated.
>
> It passes 359 out of 378 tests in test_bpf.ko. The failing tests are
> features that are not supported right now:
>   - ALU64 DIV/MOD:
>       These require loops to emulate on 32-bit hardware,
>       and are not supported on other 32-bit JITs like
>       ARM32.
>   - BPF_XADD | BPF_DW:
>       RV32G does not have atomic instructions for operating
>       on double words. This is similar to ARM32.
>   - Tail calls:
>       I'm working on adding support for these now, but couldn't
>       find any test cases that use them. What's the best way
>       of testing tail call code?
>   - Far branches
>       These are not supported in RV64G either.
>
> There are two main changes required for this to work compared to the
> RV64 JIT.
>
> First, eBPF registers are 64-bit, while RV32G registers are 32-bit.
> I take an approach similar to ARM32: most BPF registers map directly to
> 2 RISC-V registers, while some reside in stack scratch space and must
> be saved / restored when used.
>
> Second, many 64-bit ALU operations do not trivially map to 32-bit
> operations. Operations that move bits between high and low words, such
> as ADD, LSH, MUL, and others must emulate the 64-bit behavior in terms
> of 32-bit instructions.
>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> Cc: Xi Wang <xi.wang@gmail.com>
> ---
>  arch/riscv/Kconfig              |    2 +-
>  arch/riscv/net/Makefile         |    7 +-
>  arch/riscv/net/bpf_jit_comp32.c | 1460 +++++++++++++++++++++++++++++++
>  3 files changed, 1467 insertions(+), 2 deletions(-)
>  create mode 100644 arch/riscv/net/bpf_jit_comp32.c
>
<snip>
> +static void rv32_bpf_put_reg32(const s8 *reg, const s8 *src,
> +			       struct rv_jit_context *ctx)
> +{
> +	if (is_stacked(reg[1])) {
> +		emit(rv_sw(RV_REG_FP, reg[1], src[1]), ctx);
> +		emit(rv_sw(RV_REG_FP, reg[0], RV_REG_ZERO), ctx);
> +	} else {
> +		emit(rv_addi(reg[0], RV_REG_ZERO, 0), ctx);
> +	}
> +}
> +

Looks to me 32-bit optimization is not enabled.

If you define bpf_jit_needs_zext to return true

  bool bpf_jit_needs_zext(void)
  {
        return true;
  }

Then you don't need to zero high 32-bit when writing 32-bit sub-register
and you just need to implement the explicit zero extension insn which is a
special variant of BPF_MOV. This can save quite a few instructions. RV64
and arches like arm has implemented this, please search
"aux->verifier_zext".

And there is a doc for this optimization:

https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/Documentation/bpf/bpf_design_QA.rst#n168

Regards,
Jiong

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
