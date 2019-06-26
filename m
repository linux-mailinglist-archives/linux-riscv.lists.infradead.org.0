Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7C757C8A
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5maf5eavWW+ji1hJ+wumOLI8Nw1tDpypI7IoORnajTc=; b=R7c4HjDTPmMx28
	08m4R1V5EGmiuklID0lvazJoBcJdDPHvJYOSJ8yDmfZARUfCW7edcKVUBvCGIlVF1HfhzlhDJgZn0
	PZ9McUuJTvQIPg2nUY/WqHhq8g9/wdJ2VE/RvRbzsXOr2cRiBcjFOA7UtG+vzZNZCn/jiB3D2jXfz
	TaHBVzusbpn8CXwLhTWgpUfeHwmcOMPK4Wwp0+dFgYDaaqBSHlXtLM3a+5skDi/hXwrDs3BJLjQHu
	Qzt1dJfkzautnIZuAyTvOOvzjfGsVgEd+ayyP6MiPByn0uxxDvt/i85DQBluRBRC87c/cx2cEnkCQ
	o71fsKhDSz5TLGdzHpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOIP-0000bq-OT; Thu, 27 Jun 2019 06:54:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO92-0006KM-Rv
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=brea/2Qx9pBcYGaH6DB1Fc3qM+qPNzkSABIn8ioCvPU=; b=f60lASzRiXR+JIOvf1VBVoa4AS
 urDwTGJ5BY16RbBHpOVviq53kLj8surPEfHyhazyQgiwUJn/bMrok/2x4yCLthBEtEVXrVUoXnF5R
 bmNE1sX409BOJrsmAK/nY575bODxKSi6YC6jhDSUOaoj7qxWEGxrk8i9e2/VSmNeyLU26YOzWgLiF
 lE6y/YJEtXOPpUuBgJCVn7Sc/v+jnI5jIa6+U5D3DX8RZSaLNqDsA8XtpDdqoHqMbPviYC49gAWg6
 12jc+xZo1ZF7mVX4c/J0Jst+xnhyf6XG6+8rwjF9Ma7GFh5eA15Guv/HkQCsjjZmDOC1KF21mdASN
 vdlPO1bA==;
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgHFs-0003Iw-LU
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 23:23:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so570348ioa.5
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 16:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=brea/2Qx9pBcYGaH6DB1Fc3qM+qPNzkSABIn8ioCvPU=;
 b=ZaJnj72valkhOWXD57cAGw+gAAyEfQy/JR47wmIiwfnDtp1TQpOJwz7GpvJSXTUD0u
 ZA/U+rG82kpbeH8Uqa6aoazQ8fD/ngaK2CVgNrTaqAQFz3f57WqXINxufX5TlzRjxCQa
 xI8Ss8Ko+wdFKlJb0vWMvWfg8h0WPripGQ3EU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=brea/2Qx9pBcYGaH6DB1Fc3qM+qPNzkSABIn8ioCvPU=;
 b=DpOnQdrnxh21FRAiOV/f+FBNWM1XXAc1UfdioLXvvEy7UwY/+EIkAbrZu97uiOdotF
 mNOQSxvq5KZaop9Ffr2MKzkZaILYFoA/Uv39JmXiALt2hPAeE5wuxiZcSaL6hpggBTt2
 26Gmi/8R0Xg14J1xEHwWqQSEm0xB3A0kGC6z5yqxxBRzFfSwHPH82nglW7UeWZDRbhCS
 f4GzT22+a1/iTVpIV1SLlTQbzdbFoGGuzurDVwMAEBl4Kf1fzDNyKW2Mi7rLW0TTYFPj
 X/zdziFFMpYQz8jognOKArcVv+7/398wRKL88slRV0+JYLW3Gt057X6am6+odpizdU5i
 3N5Q==
X-Gm-Message-State: APjAAAUO04b8CwgWGAS4GqMyUS2KGMw7w2mToFanAkidLFZeQJ7fwA9C
 2DwiymXDiROny4sSD0jYNA/zc8BD4OBODipfqi8VJQ==
X-Google-Smtp-Source: APXvYqx4WUGRRdnDMn1qRC9QzduXjQrWAsPLCwLSndDqxI0ewueoPskdlrvCJKhtJLOzQy0pNf8LolgeC9PNFB3+1so=
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr894411iog.43.1561591247732;
 Wed, 26 Jun 2019 16:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190621225938.27030-1-lukenels@cs.washington.edu>
 <CAJ+HfNgHOt4gMSq_gufwxb=cKekCfLrk-uGJuGeDiOeQV1-wwQ@mail.gmail.com>
In-Reply-To: <CAJ+HfNgHOt4gMSq_gufwxb=cKekCfLrk-uGJuGeDiOeQV1-wwQ@mail.gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Wed, 26 Jun 2019 16:20:37 -0700
Message-ID: <CADasFoC6ga_DuHL+RxLPzBhMHr+Jj5OgGkjuUgX0o6Rx5vsvdw@mail.gmail.com>
Subject: Re: [RFC PATCH bpf-next] RV32G eBPF JIT
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>, Netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMzoxMSBBTSBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gICAtIEZhciBicmFuY2hlcwo+ID4gICAgICAgVGhlc2Ug
YXJlIG5vdCBzdXBwb3J0ZWQgaW4gUlY2NEcgZWl0aGVyLgo+Cj4gVGhpcyB3b3VsZCBiZSByZWFs
bHkgbmljZSB0byBoYXZlLCBub3cgdGhhdCB0aGUgc2l6ZSBvZiBCUEYgcHJvZ3JhbXMKPiBhcmUg
Z2V0dGluZyBsYXJnZXIuCgpJJ3ZlIHNlbnQgb3V0IGFuIHVwZGF0ZWQgdmVyc2lvbiBvZiB0aGUg
cGF0Y2ggaGVyZSwgd2l0aCBzdXBwb3J0IGZvcgpmYXIgYnJhbmNoZXM6IGh0dHBzOi8vcGF0Y2h3
b3JrLm96bGFicy5vcmcvcGF0Y2gvMTEyMzA1MgoKVGhhbmtzIQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cmxp
bnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
