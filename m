Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBB7183848
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 19:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ThxoAdoQSQM9pAlbZPWqw81MdUwsTZ9Y6+LWvRbfZ+E=; b=BktvfWCFP7yb1aPmPfuYO/d9p
	PHxC71+UNc2LkUFrjx0NCw2HFGyAtV8x9S22Fgj0C6E1zHxj45Jbo/4aYxD2XYEt7mnP2MaQwhb+p
	Yt5eBSOc9XkA4ff0+ceSL4a5sk60U74WB/RZRQyuMtU26Skkolr/zdME/ZSygdj3RZt0xqGohQNiF
	NiANpwmyv+T1plwitFx1JljKlUSR4N2jx80VnGUmqPAH7Cx3bjktCSxvREBmP8F5GuzKxdXYN2OY5
	UT0Dv7GmZptRkI3Pyc+TWbSBIX0o7Yytx58XAiKQiXlPV7QIGgssGi1SYzhV724UP+8Ka6GpVDrZ1
	6oKHWKiWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSHl-0001NY-Kl; Thu, 12 Mar 2020 18:10:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSHh-0001Me-Qf
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 18:10:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id s14so8717283wrt.8
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 11:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ThxoAdoQSQM9pAlbZPWqw81MdUwsTZ9Y6+LWvRbfZ+E=;
 b=I4zPX1hAqqwWQr+KD7wIdNB8IDc8xVCFaQqpcf/QBvvt93eCe0UKU1GokWP6FUNkSN
 3avJ8B/nDOMF1Wy+vod24ROtU7gnar4IzKwGlQ3cts+oZLT3+2AoxvSHBCByMULRxcmw
 SkNS0e6zPlNNHxs9B4CKU4IQk+TAbBjfDVo8Ha2whoHY51lkWrdy06nf07Osu2TCRWcn
 kc/67yhqR08D0je3wvUaF0KkeV2JkdSPMesncQHZD6reiwgv38kYxKowy3DFCovR+GGu
 NR6539VibfizdOJS2RGLypnaqRAgXc0A54y9z6WYR1ZPIFP4QfqCK1DJtFGsd/rL3Zaj
 zLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ThxoAdoQSQM9pAlbZPWqw81MdUwsTZ9Y6+LWvRbfZ+E=;
 b=HqnOce82RReNUTEox05rUxgzB3RhcM2CXsxW6aUYVHvjwdPrjDLl5eMRl0W3vOReGR
 //KXet9dawxULw1BPNS/Le9C0pBaVYDHuzyQZOyRkPxrSWP9Br+wn08rgJWxQ4YGJOTd
 Mi12F1A1bexpefjjidjQDPps8JmGNmfFtM20uz5AwnzfWeaK1YuQxyZOLEdhN6OjRcbL
 lClr/4HRLv0J9XTWoekBJOr5Gxf1l0HaL4Dle9K+HHV/4dnmWvY5uwqrY5w/4JxBiWkZ
 ubxkOkiBIsqAsqY5SAtB8Bm2F72Oz0uLK628Hl+gkeJQrX1l2Oc8w8IStr5X2LhdWjj1
 RfTw==
X-Gm-Message-State: ANhLgQ2pH8kz2XFfrwQTzIkhYdHpOHtemCMxF4+IT3RqmA6USbU11Z/W
 Za6xOyHgf9SglCwdZFbOQLUbU5pba6h69FmRF3Me
X-Google-Smtp-Source: ADFU+vsAKi4xd8G4idFSFlde8NxwfZ79bOricTkjLOphH8joDiSEkJuvkz9pa2jQo1q+a34sKZqI1GUmsOK5hwgACP0=
X-Received: by 2002:adf:ed86:: with SMTP id c6mr12951970wro.53.1584036615160; 
 Thu, 12 Mar 2020 11:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
In-Reply-To: <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 11:10:04 -0700
Message-ID: <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_111017_866501_B6DBF5D4 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Damien Le Moal <Damien.LeMoal@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 8:20 AM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 3/12/20 1:11 AM, Damien Le Moal wrote:
> > Commit c68a9032299e ("riscv: set pmp configuration if kernel is running
> > in M-mode") added PMP initialization to M-Mode. While this patch is
> > valid for any SoC following the ratified riscv specifications, the
> > Kendryte K210 SoC is based on earlier unstable specifications and does
> > not seem to support PMP initialization (the SoC crashes if CSR_PMPADDR0
> > or CSR_PMPCFG0 are accessed).
>
> The PMP bit has its polarity inverted in the v1.9 specification, and is
> called the SUM or Supervisor User Memory Access bit.
>
> --Sean
>
I don't think supporting old specs in Linux is a good idea. As per the
patch guideline
for RISC-V Linux, patches for only "frozen" or "ratified"
specifications are allowed.

-- 
Regards,
Atish

