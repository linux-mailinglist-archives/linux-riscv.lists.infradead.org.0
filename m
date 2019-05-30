Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CF730532
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 01:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9vGJvus8c0n0bDVQvXggox9ac3QpmnXG1vR8fnBVcg=; b=UJPJOoqrVZ6/Px
	WYKGGr6O88luWr/Aj2KtasWPRUPp2RuGJ3NygKopt7/KKvV/MxxZIII4kSNdXVFbg7yfRO/XLNTwX
	YhNW0kutK/3UVT/l1fTgUddQs8j6bPTdKGoRxz2d2/Jvnq7/zln3DUeWmQtXb/J3Hh6T9+iwnoUWE
	0YnkH6aAF2rM7BTfhxFooz+FY+ezp2Pyrmt0yU//X/M6+d5u87xEsKS5oMWTXwWHbqBP//Ex/l4eA
	CDv/oaGpiC1WMdCfFrkpxea/99FPB8VTh+svS/pkNBOJcjdARlwoawf0Lw7x957lTtBqA61SI98Cr
	8Mwkv7vGZ77XE42j4bcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUAY-0003JI-VO; Thu, 30 May 2019 23:09:10 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUAW-0003Iy-3p
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 23:09:09 +0000
Received: by mail-qt1-x844.google.com with SMTP id s57so9165226qte.8
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 16:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VsGWlAAgXK7ARM0UyCo1z+ObHcix8UI0v15itzMgAgs=;
 b=OP3KBdTFagUgJH07lGdWtzWlXEIRmW2U56cmovOgXBoCWumZLktpU5y6IEwJep4noD
 U1mNS/rrQL4V3ZKKtG3lKLP18iojhV9hc5EXXBXVmMXrpiVgohcdh1m2sS3KuWGrdKsV
 ly3u3pY95ODCqNObNVYBVbEjtufjCyzyt1e1VCXxNxEqa8OhbJ+YdjLaBIHlz9BhmbdR
 l7HgU4DMoqN4O4UWKvOnp61cWufcexJfYr2BPov0jGL+siqpM4UeYNYTneMQ1GHkQr2v
 hD5QzYHheW5Z4QloEuiic/TzpFXpKBPqCrd8i4cfkZdTeXAn9rFl9GvQSv0cBBtKg7dh
 kYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VsGWlAAgXK7ARM0UyCo1z+ObHcix8UI0v15itzMgAgs=;
 b=VaJOcJqexCeMiqCLqHx26CSHDKfJdHCwRKxHKJDQu9SLhcZTdNtSspm007x26y622l
 bDJTqMrGXQ25xbQLQGkzFH0NMvSclz2+xoKLb1ajkb5zG8fRAqyhTYbrpONEW9SJJNRa
 9oLfQCS0z53NpjUcHgWNix1hAUoyf8DTegveLT1KV88mNwlNR3aEQSgSEVqd+IOeT1Gn
 RQSa1lgbI5o1X1A+e/LAmjlso6kD6Czz6bvLFaybo+8C/Eu4isyRHC2PKpZOKLTghWGX
 wG9dRhacDp6qYEkxCSO4aZMzLKIsYtGByF8eciwKF2v7W3kUDWzRectc9J86XMbezXTa
 bdKw==
X-Gm-Message-State: APjAAAWSA/wWhhCNMU4DEf+XveQobX3kJipIeuPNMCkyC4pV4GwrmZ0E
 +lC1lkfSNOCMtD7weUJGM5aseTM3H64AoI17WUY=
X-Google-Smtp-Source: APXvYqzbxFTeCMTO5x7GXFdrK925AyO/6B7goB3FrwXjSEPa+C7nAEKycPdEZA43M+BGTqaQKk8e4+HWr2f/NQVzA0w=
X-Received: by 2002:a0c:986e:: with SMTP id e43mr5917589qvd.78.1559257747089; 
 Thu, 30 May 2019 16:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190530190800.7633-1-luke.r.nels@gmail.com>
 <CAPhsuW4kMBSjpATqHrEhTmuqje=XZNGOrMyNur8f6K0RNQP=yw@mail.gmail.com>
 <CAB-e3NSidgz8gLRTL796A0DyRVePPjVDpSC6=gSA4hH8q6VqvQ@mail.gmail.com>
In-Reply-To: <CAB-e3NSidgz8gLRTL796A0DyRVePPjVDpSC6=gSA4hH8q6VqvQ@mail.gmail.com>
From: Song Liu <liu.song.a23@gmail.com>
Date: Thu, 30 May 2019 16:08:55 -0700
Message-ID: <CAPhsuW7rOzyJTac7d9PPHeWW39Hu5pV6Mk0xJr8jyr0HH=-W2A@mail.gmail.com>
Subject: Re: [PATCH 1/2] bpf, riscv: fix bugs in JIT for 32-bit ALU operations
To: Luke Nelson <luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_160908_154577_F82C0108 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (liu.song.a23[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (liu.song.a23[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 3:34 PM Luke Nelson <luke.r.nels@gmail.com> wrote:
>
> On Thu, May 30, 2019 at 1:53 PM Song Liu <liu.song.a23@gmail.com> wrote:
> >
> > This is a little messy. How about we introduce some helper function
> > like:
> >
> > /* please find a better name... */
> > emit_32_or_64(bool is64, const u32 insn_32, const u32 inst_64, struct
> > rv_jit_context *ctx)
> > {
> >        if (is64)
> >             emit(insn_64, ctx);
> >        else {
> >             emit(insn_32, ctx);
> >            rd = xxxx;
> >            emit_zext_32(rd, ctx);
> >        }
> > }
>
> This same check is used throughout the file, maybe clean it up in a
> separate patch?

Yes, let's do follow up patch.

Thanks,
Song

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
