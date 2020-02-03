Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9FB15062F
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Feb 2020 13:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bps9/ugZnw/LOkhCjhjvZvxvS5kO2i7OXxXUPo/WJGE=; b=rz2D5YGDpKLVIE
	BOmuQ0F3mu2e3ZvKQO+tcxpIwFnkYo/MLzOY7vf6Q3gjEIKRStSq1PU9ErzWB9QvAdVplOdJBTjBj
	mG4yCMXQD3YKAfKxxxoDOfvQ8Ubx3iUrgmAZUgAVbSyvZUVvKX6trBPHogupK/HNPVZlkbSJeco0h
	bjumlLiXI/qvabXgQ7EJsLQYJG0Vy1ffxE6X2HcBf9803YhVJ5ncnZMYAE8uVJJKk76r81VQACzB7
	LdM+QjX7TU3sRjTrurQVkjhrQhW/DvUWj6yEUbJWiwIMhx34GXMUT8UNbn6RPJVNxUtDLKOA+ZLAW
	DzVyYzrpNRE3V+feDtdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyaqS-000787-Ah; Mon, 03 Feb 2020 12:28:52 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyaqO-00077f-CQ
 for linux-riscv@lists.infradead.org; Mon, 03 Feb 2020 12:28:49 +0000
Received: by mail-qk1-x743.google.com with SMTP id q15so13996672qki.2
 for <linux-riscv@lists.infradead.org>; Mon, 03 Feb 2020 04:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Bps9/ugZnw/LOkhCjhjvZvxvS5kO2i7OXxXUPo/WJGE=;
 b=jB9d7cw/PfiS8u8EbQs9pbNd5O2Hc7F0Au7RXWC+0X/zEoq8P5dW767fu/Sc/f/7Pg
 TiU8XRBuDYjCVjTZGWK5Swxp/mLNZj2/oaHXilAq2XR6lBRIOODl6O0rcsNhf0SQY8MI
 nz87gFswjm/HuWRFTDlNU5evHzM+3I19xI3EbPRaKCfgS3Jb3aYy00Hr8dLky8ttfHFg
 GXw5vY//jJdNKGf8EtGktjAegQM0PdkYkZgzkzTsVREXTq4NZzAGbrYvwjfmYWCmprYz
 I5pRwgT9sXGL9EBlBB4SXjWEM+Oenc+f/rLbVLh249ZtgwVBLieSDQ56YGIGAZ8OErYW
 bjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Bps9/ugZnw/LOkhCjhjvZvxvS5kO2i7OXxXUPo/WJGE=;
 b=FVfvtwbDdvRAOo2LMw0o+tfzGrZUHjE6v19sMHoxxCExgXEFbjbbJWxpt01kMlTAre
 s9UZUi+yjFBuh6fymAk20C/6YPRBlBXpx9blvvH6BPcOL89zC78oQfYmjjVQXZHwGTIU
 0G4xZWzVakn9SC7tB1qGLI/34K/rInEcRJuSFGo5Yv4oGM/eQiLb5Y4c+s8gssSQNQFH
 CWwfqKwbzJMwHA067ilH4HoRaHcqSRK0VixBTPhRK2GYiCyI5WZ1lO7gmjvghW61XpWe
 HPE1HttMhsc3ERWTYCsA6wISk6n8PY1pwd/ZrDISQJRSx98cYRzzG/AJp3T01th0TvLy
 VmoA==
X-Gm-Message-State: APjAAAWJ9Lekxwgm7SsQFNLr5x8/m9zSTsrxWSu9/oe7CgKOtpWzO1vH
 niKMb34IVNXZ1TgoiiPvqfq6ceCn6XJ4BI/znBo=
X-Google-Smtp-Source: APXvYqzFTVokDAvj4jM1EbkUWGFzCx3Rgz95Htz+3sKmmtcmARXUP7r9f9Tq9n+1DpqFFfKtylDEQ3g+9C6ZwMhwMic=
X-Received: by 2002:a37:8046:: with SMTP id b67mr23085188qkd.218.1580732927145; 
 Mon, 03 Feb 2020 04:28:47 -0800 (PST)
MIME-Version: 1.0
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-7-bjorn.topel@gmail.com>
 <3f6d3495-efdf-e663-2a84-303fde947a1d@ghiti.fr>
In-Reply-To: <3f6d3495-efdf-e663-2a84-303fde947a1d@ghiti.fr>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 3 Feb 2020 13:28:35 +0100
Message-ID: <CAJ+HfNgOrx1D-tSxXsoZsMxZtHX-Ksdeg8bZFFPRPGChup4oFg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 6/9] riscv, bpf: provide RISC-V specific JIT
 image alloc/free
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_042848_422481_6065EB15 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, vincent.chen@sifive.com,
 Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 2 Feb 2020 at 14:37, Alex Ghiti <alex@ghiti.fr> wrote:
>
[...]
>
> I think it would be better to completely avoid this patch and the
> definition of this
> new zone by using the generic implementation if we had the patch
> discussed here
> regarding modules memory allocation (that in any case we need to fix
> modules loading):
>
> https://lore.kernel.org/linux-riscv/d868acf5-7242-93dc-0051-f97e64dc4387@=
ghiti.fr/T/#m2be30cb71dc9aa834a50d346961acee26158a238
>

This patch is already upstream. I agree that when the module
allocation fix is upstream, the BPF image allocation can be folded
into the module allocation. IOW, I wont send any page table dumper
patch for BPF memory.

But keep in mind that the RV BPF JIT relies on having the kernel text
within the 32b range (as does modules)


Cheers,
Bj=C3=B6rn

