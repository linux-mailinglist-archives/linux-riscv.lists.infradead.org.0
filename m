Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE0E1950F9
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 07:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bXwPBs4bvRxxc7ceu3/M/CdRp7ZrpPfSo1KjPxgmJMA=; b=g78F293tMylQMXw3ccxGDTasv
	M46iRZC2nRcwB5V1y36+MtxT8dPLAyBTgLn73oJLEJZvTFJp1ixu+EjYIZEp+ifH5M3siuBQwilEb
	GRp7Yq3RcjRz/Lax7N9NnQBYt9inKOFLX7lG4HJr61ITdlKq8wwoR2nxMlsZkdON9spISKPe63O9l
	LKeUj4Qr50/mWf1Ic87aTnTToUFd4Y0PCtzC0C0bC/L36NbElpgUzCIyH+IGghXjhIxBksZSgtGiZ
	ehUAv0qm9nh1rVGUQzlgIvecajeqqi0g8y+6DVohhaPwZxkExTwE42Err3lgmG53jqnomM+dnHHFv
	ZlwORk9Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHiKN-0007W3-Rq; Fri, 27 Mar 2020 06:18:47 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHiKK-0007VU-3i
 for linux-riscv@lists.infradead.org; Fri, 27 Mar 2020 06:18:45 +0000
Received: by mail-qv1-xf44.google.com with SMTP id c28so4363753qvb.10
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 23:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bXwPBs4bvRxxc7ceu3/M/CdRp7ZrpPfSo1KjPxgmJMA=;
 b=clJ6pvzB7Mu9HtivB3u1O64LA4qb9YPIvf39dDOWy8/tviVrLhV14F/A0TPC4VM/F9
 hdrPiC2b8ii24ahPSMKfiQcoaM9hwPTimcxzcXzzZHljS/JuR3hGfQhjBS3c4b5qABZM
 GdUM/3ozkOUwpbhQnok4FjsG5KlEjpqfNpli3usH+Mzi6VpqDPlb5e4/FuHpEh/zfq0U
 JYZ0ZhigAZj6oIVZCNn4eEBSTeg7VuJ5D5ztHqcuQROsnC55uIv6YC4LWkKThID6yHWv
 c5g615umSr+UY1dRXty4QKkYyZUIeAMUPnrjqsAmO58HArcnIjiRWiEXcigOmU3BtXI0
 L0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bXwPBs4bvRxxc7ceu3/M/CdRp7ZrpPfSo1KjPxgmJMA=;
 b=JtyFI2u3vvacvSgw/eVB20FEAlnV3qaeQSvcCWxp41Wm5r3jHWEEBk7norkhZcxfBp
 dn8+JNutryE0gHOVpab1+q7kvaGndE76RBuFZB60lbU8T+3hZMjbjp5lSeO2WQDoTshI
 LrPUicUh2zTGzL/6fLIym4FE0gYeZg3wbOPv4oXGDn5d9YILbnAmgkoiBglz/Mr8GqA1
 1ZZvuo8xE8YaDBMkbt0ltTtFZuBShN0GEIziibGgR4f9BMRWEbVSNYq2CViaHAr7nKPx
 AlWG18Tb6v9/aS/kxaKD09qZqZ6nAxoYEx5mK/Q7LQsMZ9zRw2V5u1HHQvy0Z9LUYFkE
 nAmw==
X-Gm-Message-State: ANhLgQ17VqbTLOx5g1sN6EMzZ2tYrM1f46UgDnuNXA8IME7O1/1xG2tf
 K6K5mJ4g7tUnnaLXA5+rR/3vYxWGzqwcE9WLyRTAWmUR
X-Google-Smtp-Source: ADFU+vt4S1HUHgyg1G7zN6SsP48Sf0xK5VuBTU9PGEvM34X6daH5EVNhDUcENENvwP83rrvANzo6yx9VEFhT8wW4WdM=
X-Received: by 2002:a0c:f647:: with SMTP id s7mr12365546qvm.4.1585289916228;
 Thu, 26 Mar 2020 23:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <1583225286-26341-1-git-send-email-vincent.chen@sifive.com>
 <mhng-fea46604-cdbb-4262-88b8-cd87d79e98a1@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-fea46604-cdbb-4262-88b8-cd87d79e98a1@palmerdabbelt-glaptop1>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 27 Mar 2020 14:18:25 +0800
Message-ID: <CABvJ_xgKok7e4RN76eo=2=VKZxCXiJSQzP7r=7mPFuy9KXC_dg@mail.gmail.com>
Subject: Re: [PATCH 5/5] riscv: Add SW single-step support for KDB
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_231844_292851_1EFEB3C5 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>, jason.wessel@windriver.com,
 Douglas Anderson <dianders@chromium.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 6:33 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 03 Mar 2020 00:48:06 PST (-0800), vincent.chen@sifive.com wrote:
> > In KGDB, the GDB in the host is responsible for the single-step operation
> > of the software. In other words, KGDB does not need to derive the next pc
> > address when performing a software single-step operation. KGDB just inserts
> > the break instruction at the indicated address according to the GDB
> > instructions. This approach does not work in KDB because the GDB does not
> > involve the KDB process. Therefore, this patch provides KDB a software
> > single-step mechanism to use.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  arch/riscv/kernel/kgdb.c | 243 ++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 242 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
> > index 01af9fb43150..88080991fa85 100644
> > --- a/arch/riscv/kernel/kgdb.c
> > +++ b/arch/riscv/kernel/kgdb.c
> > @@ -13,8 +13,235 @@ enum {
> >       NOT_KGDB_BREAK = 0,
> >       KGDB_SW_BREAK,
> >       KGDB_COMPILED_BREAK,
> > +     KGDB_SW_SINGLE_STEP
> >  };
> >
> > +static unsigned long stepped_address;
> > +static unsigned int stepped_opcode;
> > +
> > +#define RV_IMM_SIGN(x) (-(((x) >> 31) & 1))
> > +#define RV_X(X, s, n)  (((X) >> (s)) & ((1 << (n)) - 1))
> > +#define EXTRACT_UJTYPE_IMM(x) \
> > +     ({typeof(x) x_ = (x); \
> > +     (RV_X(x_, 21, 10) << 1) | (RV_X(x_, 20, 1) << 11) | \
> > +     (RV_X(x_, 12, 8) << 12) | (RV_IMM_SIGN(x_) << 20); })
> > +#define EXTRACT_ITYPE_IMM(x) \
> > +     ({typeof(x) x_ = (x); \
> > +     RV_X(x_, 20, 12) | (RV_IMM_SIGN(x_) << 12); })
> > +#define EXTRACT_RVC_J_IMM(x) \
> > +     ({typeof(x) x_ = (x); \
> > +     (RV_X(x_, 3, 3) << 1) | (RV_X(x_, 11, 1) << 4) | \
> > +     (RV_X(x_, 2, 1) << 5) | (RV_X(x_, 7, 1) << 6) | \
> > +     (RV_X(x_, 6, 1) << 7) | (RV_X(x_, 9, 2) << 8) | \
> > +     (RV_X(x_, 8, 1) << 10) | (-RV_X(x_, 12, 1) << 11); })
> > +#define EXTRACT_SBTYPE_IMM(x) \
> > +     ({typeof(x) x_ = (x); \
> > +     (RV_X(x_, 8, 4) << 1) | (RV_X(x_, 25, 6) << 5) | \
> > +     (RV_X(x_, 7, 1) << 11) | (RV_IMM_SIGN(x_) << 12); })
> > +#define EXTRACT_RVC_B_IMM(x) \
> > +     ({typeof(x) x_ = (x); \
> > +     (RV_X(x_, 3, 2) << 1) | (RV_X(x_, 10, 2) << 3) | \
> > +     (RV_X(x_, 2, 1) << 5) | (RV_X(x_, 5, 2) << 6) | \
> > +     (-RV_X(x_, 12, 1) << 8); })
> > +
> > +#define MATCH_JALR 0x67
> > +#define MASK_JALR  0x707f
> > +#define MATCH_JAL 0x6f
> > +#define MASK_JAL  0x7f
> > +#define MATCH_C_JALR 0x9002
> > +#define MASK_C_JALR  0xf07f
> > +#define MATCH_C_JR 0x8002
> > +#define MASK_C_JR  0xf07f
> > +#define MATCH_C_JAL 0x2001
> > +#define MASK_C_JAL  0xe003
> > +#define MATCH_C_J 0xa001
> > +#define MASK_C_J  0xe003
> > +#define MATCH_BEQ 0x63
> > +#define MASK_BEQ  0x707f
> > +#define MATCH_BNE 0x1063
> > +#define MASK_BNE  0x707f
> > +#define MATCH_BLT 0x4063
> > +#define MASK_BLT  0x707f
> > +#define MATCH_BGE 0x5063
> > +#define MASK_BGE  0x707f
> > +#define MATCH_BLTU 0x6063
> > +#define MASK_BLTU  0x707f
> > +#define MATCH_BGEU 0x7063
> > +#define MASK_BGEU  0x707f
> > +#define MATCH_C_BEQZ 0xc001
> > +#define MASK_C_BEQZ  0xe003
> > +#define MATCH_C_BNEZ 0xe001
> > +#define MASK_C_BNEZ  0xe003
> > +#define MATCH_SRET 0x10200073
> > +#define MASK_SRET  0xffffffff
> > +
> > +#define OP_SH_RS1 15
> > +#define OP_SH_RS2 20
> > +#define OP_SH_CRS1S 7
> > +
> > +#define __INSN_LENGTH_MASK   _UL(0x3)
> > +#define __INSN_LENGTH_GE_32  _UL(0x3)
> > +#define __INSN_OPCODE_MASK   _UL(0x7F)
> > +#define __INSN_BRANCH_OPCODE _UL(0x63)
> > +/* Define a series of is_XXX_insn functions to check if the value INSN
> > + * is an instance of instruction XXX.
> > + */
> > +#define DECLARE_INSN(INSN_NAME, INSN_MATCH, INSN_MASK) \
> > +static inline bool is_ ## INSN_NAME ## _insn(long insn) \
> > +{ \
> > +     return (insn & (INSN_MASK)) == (INSN_MATCH); \
> > +}
>
> We should be sharing these sorts of things with the BPF JIT.
>
Ok, I will move above macros to a new header file, and then I will
prepare another patch to replace the magic number in BPF JIT with
these macros. Thanks

