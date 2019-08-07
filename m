Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD02844FA
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 08:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Il8HvQOrL4dsMEhyhzbkU49vZyDv0ZPoYK3TDl8/aSw=; b=nTDb3dJRMnRgo4
	crW0jcRfTczKrGb/1nyeLKM7zjuUkJ3DqD0QyQB8IUQM2YEpSgKcyuyJxkKS75zY4hYEQN5zjFLQm
	nyaaG7c2Oh0GmaMk+VHRjDxLUAlurV40G7annfSJIt7Dj0XS/r+sEBPKNKHjT/JwFsvptktDkeOhY
	RdTq2aWOCMQt8wdLdIsDFKhe8HTmVuMJnIN/AvGdop7vSDadWDBRWndEIz121qKKS1+x3HWrA6TFh
	VseKbaLpLslWVC+9AlA5I4Bp+BV/pRGV40aYibBEPJz5gNugj9kPCoR4nkSsHVAvmWgXCr+ftbUIJ
	GO0Bw58OK9+Vwoqec2Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFrW-0004kF-MN; Wed, 07 Aug 2019 06:55:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvFrS-0004im-Fh
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 06:55:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id x1so40276410wrr.9
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 23:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jCoErHiPNvk13SPfCcqBT6IJoVO0gBMNBIOMvhTHKu4=;
 b=qpivKekgVXwq+eNUFaaCyUsDmoXANXQ23A0g0oz148wDbeLPXCDJoHF/oqUYv4UXMe
 0Qyl1XUojpebWB5JVei1yVMMKylhDlmpCUqGKaTNLroELwyxawmAOY3QfQg/YB2/R7yx
 HY9b93Nx5E4Vnig6g5s/bpQZ15IyFDRJi6l0rJjrH8mp/RikSPmlOqIL3byNr5ma94Nt
 SnxR+ehNzzlt2riihmWQBn7DQrKxBEDDzkxP9z/JPv1m2nLkMamUtSTD5VTmDkfQ8iJH
 EkB6Mm1YFtAazfks1fuZT3aLcs2r0CLZHyZmVJFHuq+tGggHTvvkFany5maEqYXv+GGK
 4VKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jCoErHiPNvk13SPfCcqBT6IJoVO0gBMNBIOMvhTHKu4=;
 b=gAV1N9TnGklFEU2uNCqXistLyJI94ePdDZd6x35Yc7qyPLNp/y7L/lIk634X9V1A1e
 ViYnMx5y3iHxk1soqZ+wYrWwRTnSjrIt5KxR+HiXWp8eY3c9GGRKZYKqpk9G14BTJbGe
 5azDmSgJS8arRT+h3At7vvgaJ71QZ7fH7NNpkvF+DF9ET4laqvXGPIqqb/jc0HFD5Lip
 SwWcRhKmB0IbD6ezdqx//dr//yOyek9FBF2jSv/U+cxe4SsTbSXv9dwO6HvHdqRQ9b5A
 ZwegHIGi6yYrdylrRrWiiiyPezfrX3By9yRoa8lyxnmbNCuuixBJx8FiR9EtAoI/P1eZ
 yK7Q==
X-Gm-Message-State: APjAAAXxboTCokAkxHNJpxHesZBciMMYFb1Fh4CClJvcpjaczW71hBFp
 C1CtZz2dBzBEkuHc73zclx7UtXsh+ndb0+HFFJyt9g==
X-Google-Smtp-Source: APXvYqz5vYJETic8geIvrMG3/Y/wuhAA21T5TNvWpMpv6MeyTEPLTyBjCy9rs3cydr4EEcB3g10arnXVM9KB3ROF83M=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr8284877wra.328.1565160946973; 
 Tue, 06 Aug 2019 23:55:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190803042723.7163-1-atish.patra@wdc.com>
 <20190803042723.7163-3-atish.patra@wdc.com>
 <20190807065119.GA7825@infradead.org>
In-Reply-To: <20190807065119.GA7825@infradead.org>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 7 Aug 2019 12:25:35 +0530
Message-ID: <CAAhSdy2eP+z28XJmP9O6YPftQ=Rg6AwdSrVwu83igrfvYSRKhw@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_235550_666093_E5063E87 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Anup Patel <anup.patel@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 12:21 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, Aug 02, 2019 at 09:27:21PM -0700, Atish Patra wrote:
> > From: Anup Patel <anup.patel@wdc.com>
> >
> > This patch adds riscv_isa integer to represent ISA features common
> > across all CPUs. The riscv_isa is not same as elf_hwcap because
> > elf_hwcap will only have ISA features relevant for user-space apps
> > whereas riscv_isa will have ISA features relevant to both kernel
> > and user-space apps.
> >
> > One of the use case is KVM hypervisor where riscv_isa will be used
> > to do following operations:
>
> Please add this to the kvm series.  Right now this is just dead code.

Sure, I will include this patch in KVM series.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
