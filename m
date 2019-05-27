Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD73A2B38E
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 13:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPNM/z0wx6t3p+mlYTO46ZOgJwgINo+fW4rpQGxIRJs=; b=OkSWYtEso3pfRU
	1mGuC7YQ9mbsIT5fyTSir+eYhAnube8CU0UFaWbpxco6rTO7YImtM0t1Z1JtRbHnvBZWdbv7WwIMV
	es1FQ1RIpUdPJAvSCzfa83VLjGMqB4r3JuTxIlVFS1f44wWBh+7HO7lWeLVZuU95NrEKg3ufJwPBO
	pbnUtQUsHozviCmjK7EU6ZjUy3CpMdW8tW0+hcbbdwoNY2VbCy65L8AjpDspBPP1Byot7J5xgFTZq
	xOuw+HgOMeQ9wd8zi35IPjCLVn+I5vUEvEzoQck5b3hxNgy+1m8M6V/WOO+E+BkGuo/ne+c8uYrKu
	b8fjvumQpWzHp5DtXu/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEBj-0008Mb-6Q; Mon, 27 May 2019 11:53:11 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEBg-0008Ln-IS
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 11:53:09 +0000
Received: by mail-lf1-x141.google.com with SMTP id f1so11847336lfl.6
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 04:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jkQ2P05r0CbW3f6Nc/yL+6alMJG9tn6Pn2kcFIlii5k=;
 b=PY1QXMvsBTT+5wZ1zSM7J7vMW6SN5avLhjy0/VrAQXYgaBJepG9Ai4IZ/9tWCgloPb
 5xoxs4mx7F5kZPxhU3rUcPkDpijDA9VjFDacr8eNWaOUIU5yI6kgqzOhfVP+ULykludC
 He0tYpJwaEdc4JONkqP5w9LM5tG8VEM3OzMINepLjOyPzHVkiTktZ0Ed0vAlNnSry+2S
 dZKMWNzwPUdZtF1lir4/GU4Y1GAInSuerD9TN6xfBKjuLkEC3P2XI88cOPHMn1zfmIxt
 xqZ3rLR/SQ2mRuEsRVRa5AMAZgJB6SHjXkonmWx0l6JizB3g8egqrBx24T+iwRjey04U
 IwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jkQ2P05r0CbW3f6Nc/yL+6alMJG9tn6Pn2kcFIlii5k=;
 b=av4VohUJQjZfRfsC1Z2+L0LtLnxxEVrSP3BzNYuwoi4lrmxA+KytlOwEiIWiSmJkuZ
 Fvt7KmoCW/xmIBGAC+BhPFBUMRKypWTW+KkgaTUOP/MMSJ2h8vNS++Dl9nju5fB1Zj0r
 EDSlsxIQSY/STdadgdrZvnfanLq76YKg8noZ8BgO2aZbHJjjvnB+0fKkGcVXrMx5Y4rK
 TTSvffD8aniVHahbL4JIVp3jXfAPDiEjQsunVnP6lHO6KSSoAAh2nqu0jja4dh2AO5Mw
 X7AeR0bRCQEG0jsPNvHVjMe8B/P/vNRErktjBr4pJ/UgPZDlsW9lKUfBrcy0KvV2ePih
 ZxUg==
X-Gm-Message-State: APjAAAUTa10eYIzoYMdFbJL8VE9gal7Ysa/VOG5ouCjTt+udRSnyAZLc
 /bg3nq1IYzvXnva1T5/a3Z+FNSLyT/bDhXK5I5icrA==
X-Google-Smtp-Source: APXvYqxDK35ZwKMDb6RKZtyYMyBWL/UKHxLG0Pbv1KKjE1/wwOJP3jgzEapl8KPojM3oi55l5N4mhmwF2CTmPtxOxGE=
X-Received: by 2002:ac2:4209:: with SMTP id y9mr19510582lfh.83.1558957985935; 
 Mon, 27 May 2019 04:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <mvmwoihfi9f.fsf@suse.de>
 <CAJ2_jOEr5J7_-81MjUE63OSFKL-p9whEZ_FDBihojXP2wvadVg@mail.gmail.com>
 <mvm36l0fhm3.fsf@suse.de>
In-Reply-To: <mvm36l0fhm3.fsf@suse.de>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 27 May 2019 17:22:27 +0530
Message-ID: <CAJ2_jOH344oH=mvo1n9RJDPjT4ArMNBaogqy0dLCOwCcY7Fwuw@mail.gmail.com>
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_045308_613981_9E9D1CD1 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 1:34 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Mai 24 2019, Yash Shah <yash.shah@sifive.com> wrote:
>
> > Hi Andreas,
> >
> > On Thu, May 23, 2019 at 6:19 PM Andreas Schwab <schwab@suse.de> wrote:
> >>
> >> On Mai 23 2019, Yash Shah <yash.shah@sifive.com> wrote:
> >>
> >> > On FU540, the management IP block is tightly coupled with the Cadence
> >> > MACB IP block. It manages many of the boundary signals from the MACB IP
> >> > This patchset controls the tx_clk input signal to the MACB IP. It
> >> > switches between the local TX clock (125MHz) and PHY TX clocks. This
> >> > is necessary to toggle between 1Gb and 100/10Mb speeds.
> >>
> >> Doesn't work for me:
> >>
> >> [  365.842801] macb: probe of 10090000.ethernet failed with error -17
> >>
> >
> > Make sure you have applied all the patches needed for testing found at
> > dev/yashs/ethernet branch of:
>
> Nope, try reloading the module.

Yes, I could see the error on reloading the module.
Thanks for the catch. I will fix this in the next version of this patch.

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
