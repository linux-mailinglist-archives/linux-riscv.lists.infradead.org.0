Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B8A1B1D96
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 06:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JaRV6n7+ccaKT0v01yd0l6B+jTgUwBzSELbdheC0Jd8=; b=Tj2YkDUtocIwO75MF5Bn7K9UU
	RblaowVe7+xRUH38talnqItMyFH+E1zSHzKgbdL5F1TclgY6vaK7tLj5L/Ksrs4lUMLP6m/MBoAZP
	JCTBcZXcTBPxHVCuT0RqhCPIMi6ABTM/UfeVyoc82x0vb9VI89efU1YDDxXGtsymw0fnx+BoaQuWP
	A48Z5B4VLmjnvPMdUjLp56wTVz5K1zLiGCGhY/qP6BUxn0nkw99dUmOMTDdEmpOjczrjoIp96UnSh
	kE3wupyOJAVRq9327/BtMTHMXfGA/d+ZH8tCgSw/L+55t2zDIetw8Sb0YC1DgYC9IDNzvtxvAcdgu
	6QUJ9c75A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQkYF-0005ce-7h; Tue, 21 Apr 2020 04:30:27 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQkYC-0005bt-FM
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 04:30:25 +0000
Received: by mail-ej1-x644.google.com with SMTP id re23so9916382ejb.4
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 21:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JaRV6n7+ccaKT0v01yd0l6B+jTgUwBzSELbdheC0Jd8=;
 b=M+nksk/9z+RBAC/I+whdt3ySMp6DprA4BX9reQA7ke7Rsc7Z+/wcR9fz6hLIKMACy0
 rfjojAJJNUgt0MSj4Zt86k6z/lqrP2ZmVeo8C47lOEOcFHZTMsdszEdjvkMZ4AsWbjZh
 D2yG/CmZkwds3D4UdU7ep8UJTORTr005UADm4mucoywmSXm4j/CgV2rTcc8lm3jVTJWh
 7qSnStnVOeEhOkAjqGz/s/WYA9KHz0n5Ctx8Oj6oegvZ4GNGS/SX+QrgZNI1Nnt6+13Z
 iaoAsdxUH76ViyzBVepub1KNUmaaGTVbeYD9/YHXKDFWlcBro4g908b2QhkHpqw0AulI
 xtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JaRV6n7+ccaKT0v01yd0l6B+jTgUwBzSELbdheC0Jd8=;
 b=XjJck1BlfhWh6nApjG88Szk0fEInZeWDBTLGw+Z8nuKQJexpAPl6ylQ69fAoSWsI6j
 eaknT4PDdVYlAn6bsIEwQWTO7NNjv+EUDSCntYtTS5Yx+mr5Z+AiLRV2CIHgh2dmMEQy
 f55ultb0DCsRQGmNKYX3liBYdOu4UQC9lm4BK9ExMn0meAw5De7PM54gxEo3Mgd0hCLA
 ORbe5z8vX//GCfkahOhgbTZ7GzK6w0x4nxwbC8K5yOeT5PRdpwJeE6+YSA4WEwqhzY4s
 Sj47RN/S3J5+Y+w+mEboxjzeaYUE2btGsDw644YgdF9SnzvsH8MtzPI7V2reaXFeU4KI
 1Jdg==
X-Gm-Message-State: AGi0PuYcYeEVRkyWCuxZn6IIhpEoZ+nkMMQODyTyKZ4ZetirawFnPKrn
 uWQS65Z0h9BcxnGwD9jDAgQODO6VyV2t8quHw58=
X-Google-Smtp-Source: APiQypIMD70EtNdPatK85IUSaKOTriZ1+IxiJ4MjqkYjKGaWAZbX9pp08uyo1mYe6AKdkLOTgUPU0VUJcjgu3hKmZzw=
X-Received: by 2002:a17:906:54cd:: with SMTP id
 c13mr18570001ejp.307.1587443422405; 
 Mon, 20 Apr 2020 21:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200421002804.5118-1-luke.r.nels@gmail.com>
In-Reply-To: <20200421002804.5118-1-luke.r.nels@gmail.com>
From: Xi Wang <xi.wang@gmail.com>
Date: Mon, 20 Apr 2020 21:29:46 -0700
Message-ID: <CAKU6vyYZqw2JgPXwQUps7SMAcT=7PRaa37yXnHCbCoK0Yt6D5Q@mail.gmail.com>
Subject: Re: [PATCH bpf] bpf, riscv: Fix tail call count off by one in RV32
 BPF JIT
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_213024_540326_A89E6929 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xi.wang[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, KP Singh <kpsingh@chromium.org>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 5:28 PM Luke Nelson <lukenels@cs.washington.edu> wrote:
> This patch fixes an off by one error in the RV32 JIT handling for BPF
> tail call. Currently, the code decrements TCC before checking if it
> is less than zero. This limits the maximum number of tail calls to 32
> instead of 33 as in other JITs. The fix is to instead check the old
> value of TCC before decrementing.
>
> Fixes: 5f316b65e99f ("riscv, bpf: Add RV32G eBPF JIT")
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp32.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp32.c b/arch/riscv/net/bpf_jit_comp32.c
> index 302934177760..11083d4d5f2d 100644
> --- a/arch/riscv/net/bpf_jit_comp32.c
> +++ b/arch/riscv/net/bpf_jit_comp32.c
> @@ -770,12 +770,13 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
>         emit_bcc(BPF_JGE, lo(idx_reg), RV_REG_T1, off, ctx);
>
>         /*
> -        * if ((temp_tcc = tcc - 1) < 0)
> +        * temp_tcc = tcc - 1;
> +        * if (tcc < 0)
>          *   goto out;
>          */
>         emit(rv_addi(RV_REG_T1, RV_REG_TCC, -1), ctx);
>         off = (tc_ninsn - (ctx->ninsns - start_insn)) << 2;
> -       emit_bcc(BPF_JSLT, RV_REG_T1, RV_REG_ZERO, off, ctx);
> +       emit_bcc(BPF_JSLT, RV_REG_TCC, RV_REG_ZERO, off, ctx);

Nice catch!

Acked-by: Xi Wang <xi.wang@gmail.com>

