Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52B61C4307
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 19:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IJI5f8hOlgJLa4m5pIdFlzMabgKQ1SIX55UP+OjSdBA=; b=lSAbT9IhF/wmuED/L4bQVIvDq
	7tmW3faXgJy1lZYzXg0fiHQNpri7q/KMsUyEofqvOQbpTtWYqQmFGjIORuGV3x5fZB1UpiqtskSWW
	X9y01CqkYeyXCnpcl022mnaZqf32lBf+YJ5ZjsIu96WcM7eYyOvNq4IgwkvNUsenxNBBuqQ2F4XqZ
	MP/yZpTxLpwUFuPFYRFpKFIrEZFCq5ii34rH03GM1JhXRD1OlZMnLocrK2I2h1WcCFgTUAhTu4oMJ
	fibG8h6TZDin2NJC2lpWAS/Mfk+6ufrZFJTfRRyad+0i7b2xF50qp8D4uXmmFQ6IPZW1zdkpAMXoe
	fq+ZV75AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVf2T-00032a-1H; Mon, 04 May 2020 17:37:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVf2Q-0002yv-3N
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 17:37:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id d17so52469wrg.11
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 10:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IJI5f8hOlgJLa4m5pIdFlzMabgKQ1SIX55UP+OjSdBA=;
 b=sLf6cwlLSRIjHDP2kg2TBle9sRTX1zi6t7cBz7OZjT9zBPnOEVCp7dAhZ5VIuRj425
 hxplPKugPEkVft3YJtydQZYUMpH30NOBQ5q0fFULuSd7zUGzC7yeqHcr+4X8P8e6TltU
 Mf26btkL2BK0+vGP6QKT0th24uAi86BCR8Jg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IJI5f8hOlgJLa4m5pIdFlzMabgKQ1SIX55UP+OjSdBA=;
 b=j0yWywzzVmJO8VvEReggM9iuDPUQlEDped7poDyuyeTL3A5VDQW5dtjqNhczamrhos
 HOWnQAzFKll61vyVD7AADfsXW6pcwqxiPaHKmjsRJvkvpVVDRVhjpfxETJZz4cN8Y4qX
 n62KG6vjtbQMYK+26YIVSLBWjKH48u/yTXcyVMNe4M28AhmqyIa5mPv9OPAUVATDeUtb
 f3Rf2SzWgn9/6o3Y5p7NWPpBDRGYEdCMf+Ly1KWOJa0x0qo6HKomuZGi6k3KEpVfgTxt
 DigzDIg9kHVmfH8hAfQMahZEPNQXITRXTAH1LbcBOr1Izf2v5pHn8krUfmlDI5NlcWmT
 QLJg==
X-Gm-Message-State: AGi0Pua6QLbgZSQ1WP3Qvi5lsFQ5ZLyUkzdDS3WsmgdHuTKTSntnVVkj
 fdbaF7jRn4f+XsEvuZFpDmtEaTJAKcvUawzld7ly
X-Google-Smtp-Source: APiQypKL0LFBdt9evPCiVFS44KQzDG+nTobDCx2UrOxF2R5qtZLfeQ4eUc2xP93l7Mm+VWsLa5Cp/CkvPSnw5qyW42c=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr438377wrr.162.1588613871278;
 Mon, 04 May 2020 10:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200504035448.13893-1-zong.li@sifive.com>
 <CAAhSdy23jzYvZcmXoX_5F1wDenBQ8NpvNpoO41=aBGHoONPCgg@mail.gmail.com>
 <87tv0w3zrp.fsf@igel.home>
In-Reply-To: <87tv0w3zrp.fsf@igel.home>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 4 May 2020 10:37:40 -0700
Message-ID: <CAOnJCUKCryLuZn0Pd71z3Oa1AEN1xUfz=SW_5PBV-2pDU+Nw=g@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: force __cpu_up_ variables to put in data section
To: Andreas Schwab <schwab@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_103754_209294_14A882D7 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 12:50 AM Andreas Schwab <schwab@linux-m68k.org> wrote:
>
> On Mai 04 2020, Anup Patel wrote:
>
> > Slightly improved text:
> >
> > This issue happens on random booting of multiple harts, which means
> > it will manifest for BBL and OpenSBI v0.6 (or older version). In OpenSBI
> > v0.7 (or higher version), we have HSM extension so all the secondary harts
> > are brought-up by Linux kernel in an orderly fashion. This means we don't
> > this change for OpenSBI v0.7 (or higher version).
>
>   +need
>
> Andreas.
>
> --
> Andreas Schwab, schwab@linux-m68k.org
> GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
> "And now for something completely different."

With Andreas & Anup's nitpick addressed,

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

