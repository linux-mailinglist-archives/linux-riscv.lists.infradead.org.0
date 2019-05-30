Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED41304D5
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 00:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yFmMydxUMWDDoIlCF/E6pstOwSjP0ux9dlZmrAdOjo=; b=bU2N7mVOsmotlm
	rSVG7z8KTwl1wqVNG5HuiiA8seyFAF+k9i+kmXa/dN85GU9vL6uOH0P2UyscpuvnflYpzwchuz2+l
	ynwSB0xqfEe+p1tc8d7Cw9Pn/BOC4FyA2tmQDaO5MmcwCKta1I7gajcBfMhP64+CQJjVMTKKu/hg+
	0uMw3aTq+CbqvKFl54wr/ZTl/IsuwQgAp+mYXsoU95NFriv4Y5lbbwACm93Zt8rX3y+Mp/LT8CeNr
	8yU8lwVBT0H76IkOBdIfnx6NYggdsy8pa7Pt2OCh3kjCQcb9Sxkg2fwrX2Eyvcwo17qGpUcSc0Qha
	LZKJgarkshdBgAqwCRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTcw-0007ns-Gf; Thu, 30 May 2019 22:34:26 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTct-0007nP-9d
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 22:34:24 +0000
Received: by mail-qt1-x842.google.com with SMTP id a15so6961252qtn.7
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 15:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dX8WKZ9qrWHo5nxihC0jGW8Sb1EefXDVfC2HVTjTW0U=;
 b=SHqwW19zaTXztrJeZskOeIDsvYpDUNgAyfzDHK+7CwSuJ/UY2vvMulHl3fn3EPiwKp
 7dKcSWfYL+Q3/J5scsAXqmDM93STQJCcctjaf+s7HkYdnWxeY4IOiufkNdk8pufPU0pj
 GhFes5XTPJLMDHW+THbGMSg8EmhmiYBNj0buWdRMkcs7B2pPSWWIzRlxtrj9EbpXMpqm
 T/VOdM5GzRAnyKCZmB0mQ86cnoV3h2WF3fPP29KhYS5ojCjCyIL9rq8qPU/93eYdIMY0
 x81ZlfNy4Cd1zUGsYKKuU2JtB3Z+xL3smYWMothHCdscWTLrYojSJEBTU3RFPTlEcGYr
 S/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dX8WKZ9qrWHo5nxihC0jGW8Sb1EefXDVfC2HVTjTW0U=;
 b=Oi83ftqL9rHd+Q45C9Izrwb6Mjl89/zscssp+oprMLMuK7iDRFjC+HFPFspppKsmbt
 I5O1qqISHYOJSUiiZr85z1k2b/KqdMAsEN8CUtOM2baqbldalSO7rFjPbcTINRMovsEB
 ENvYV4p44HbE4AIjktqMIE1rmI+gwtFUeCTvN7hxHiBcZbqN9via+ApxHCicl+s4ldmL
 16g40NYJl0UziOEy6ybtWc0skb1wkCNNkZhmjIym63p9W+uvNzN1b0U2PBVh02TOLoYR
 9rjlF/NA3G8Ia9m7MWAYISt5TzhN6LbIR0bIWBbqJKLjClivdkCiZ/FkTZJpdcQrkwlB
 tb1Q==
X-Gm-Message-State: APjAAAWyG0EXualrQUcj/74jHUO+v73XHG5Eq90Mfg4s3qxnkItPCKLV
 c5Eyw7NvWEHO43MddccJAczBU6WeqxWmLTkmCSU=
X-Google-Smtp-Source: APXvYqyd9G1R8zZihg8bY4icpgogJCi9+Y+3btVGT2ymcWviQbGEG+KSKqLohEXCy5dnnujIVem0Lk5vCSbh6Nw1U4s=
X-Received: by 2002:a0c:b032:: with SMTP id k47mr5801528qvc.86.1559255662262; 
 Thu, 30 May 2019 15:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190530190800.7633-1-luke.r.nels@gmail.com>
 <CAPhsuW4kMBSjpATqHrEhTmuqje=XZNGOrMyNur8f6K0RNQP=yw@mail.gmail.com>
In-Reply-To: <CAPhsuW4kMBSjpATqHrEhTmuqje=XZNGOrMyNur8f6K0RNQP=yw@mail.gmail.com>
From: Luke Nelson <luke.r.nels@gmail.com>
Date: Thu, 30 May 2019 15:34:10 -0700
Message-ID: <CAB-e3NSidgz8gLRTL796A0DyRVePPjVDpSC6=gSA4hH8q6VqvQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] bpf, riscv: fix bugs in JIT for 32-bit ALU operations
To: Song Liu <liu.song.a23@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_153423_339333_161F712B 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luke.r.nels[at]gmail.com)
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

On Thu, May 30, 2019 at 1:53 PM Song Liu <liu.song.a23@gmail.com> wrote:
>
> This is a little messy. How about we introduce some helper function
> like:
>
> /* please find a better name... */
> emit_32_or_64(bool is64, const u32 insn_32, const u32 inst_64, struct
> rv_jit_context *ctx)
> {
>        if (is64)
>             emit(insn_64, ctx);
>        else {
>             emit(insn_32, ctx);
>            rd = xxxx;
>            emit_zext_32(rd, ctx);
>        }
> }

This same check is used throughout the file, maybe clean it up in a
separate patch?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
