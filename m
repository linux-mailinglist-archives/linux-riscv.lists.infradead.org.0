Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7507D183945
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 20:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y8YLSD/iC+jeohN29M4Qn28/pKlq+WgFxsRFAr0eroM=; b=q/ngQFByvspkYmpi0CmYArmDb
	WP924hShm1ExvVL8dGnbLbIGkFQfn86tZnQ6xa3vNed5XQS7oy4kMSKbHQP1a5dUEHua8R30YvRGZ
	6w7PN4S4+5dUz/FKPnPxplbOn93Y5ZPmroTu6zrMzmF2pYYOKEz8ArT9+vTj8pAZupCqqQrsJMueG
	JVZwpe9vk1DNQoguKed90JcTe6Aa2NrwbOvdornX/+Gb9A7c79PFr32h9I2FbF+4Vf+a+PjrNtQh6
	Gymhj/sJ4F/jBO4aI1vBjup2g/ZX4owxVwm9kWLxcoLwgITt083GR3KmYS8izeGGWCpUuygFGeA3v
	FY/AyNt3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCTGU-0002BA-Iz; Thu, 12 Mar 2020 19:13:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCTGS-0002AR-1S
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 19:13:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so7659533wme.1
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 12:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y8YLSD/iC+jeohN29M4Qn28/pKlq+WgFxsRFAr0eroM=;
 b=FCpLbipB0X7V5etHLODI9gmShOmN0ym9gH3UesNMObSO/KRK6Tp5Yfm2q5K3jZ/ezX
 lO73KN195/XnFS+8QhyNKFEUdpPSHwc1yEDRu+9K155aq4CbZUzkX+229ehsveI+4Ktm
 wL8r3LkgZFC9tvPgQupsaxoe2owTkgpWQfaoF8gCIK2FGNugvqOBLI8FvkCQb/1r9Phc
 CXO9f10fxdOBlCDwHpgQxSAkFKwjq6i4ww8bGRamBfgQ1SSSd0/RIstrt2nJUNK4ffNf
 k+0fAbmalnwXFuCVOhGAl7XElYe+s6kKF9AVu/MVfeyOn/NXASl926dJt997c2aOFi0G
 lwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y8YLSD/iC+jeohN29M4Qn28/pKlq+WgFxsRFAr0eroM=;
 b=N5WEAu9+D3S1KsSsMMMlM1ufvXgQ+n5tDYd+PMT+kMCA80/K2DYola6iTG5I5QwyWw
 B/TUjBtKvUd4c99rGSI57aQRXIOcHAV4fEsNn0i8olv1N6PCHDCEvjvI/VAnY2qExI5S
 8oADeHlbuzMkWsDXAM7eEDkdtbdS4vanr5uX2tXD4dteyp3ejxCaXVqAQC/5z4wKucO2
 vKCdLn7ggzl/CGVcxTrQGCBola7nrwX1X7IY6LGn8Q5QaTki8JtGPXHgNlgcdBm6MPGM
 UGzbA/yuf99ULiza6z25zEI2hm+a/znwdH3tTXTXiKahxofV2vr0udSYOz286suOfVYS
 ndNA==
X-Gm-Message-State: ANhLgQ1YYWaff0/j9MuMMr9tDTdRk5O2kTEVwoYkc8warbYB3GQsHaJe
 2aR/oL0XxE6WSKo1CPy7z5FM02+A5Qd/lO2nLNY/wfQFvA==
X-Google-Smtp-Source: ADFU+vsh9RBqNwjFeKwZzoRlq1+mEet5gldMQDxvg5+lEF4UbzH7tcGgoNSGblozfmhiYSCtnsZJ6kACuItiOEPsZmo=
X-Received: by 2002:a7b:c391:: with SMTP id s17mr5024726wmj.55.1584040382383; 
 Thu, 12 Mar 2020 12:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
 <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
 <CAOnJCUK15kiMohMoqfPUNE43Yq+BTW=kY4AHYjyKkdr9Htg-ug@mail.gmail.com>
 <e7835ca3-0754-8143-33cd-bac97878a0ad@gmail.com>
In-Reply-To: <e7835ca3-0754-8143-33cd-bac97878a0ad@gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 12:12:51 -0700
Message-ID: <CAOnJCUK5bY8tbPLOCdTzzNMcy2yjK7rHL4jiM=0j=waBo1y-Pw@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_121304_084782_C7227A6C 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Thu, Mar 12, 2020 at 11:49 AM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 3/12/20 2:29 PM, Atish Patra wrote:
> > On Thu, Mar 12, 2020 at 11:14 AM Sean Anderson <seanga2@gmail.com> wrote:
> >>
> >>
> >>> I don't think supporting old specs in Linux is a good idea. As per the
> >>> patch guideline
> >>> for RISC-V Linux, patches for only "frozen" or "ratified"
> >>> specifications are allowed.
> >>>
> >>
> >> Well this CPU follows the v1.9 spec. It's real hardware, if it is to be
> >> be supported, then the 1.9 spec needs to be as well.
> >>
> >
> > As RISC-V is an open ISA and it's continuously evolving, there will be
> > some hardware
> > that will implement old specifications or non-backward compatible features.
> > I fear the number of hardware with such features/implementations will
> > grow in the future.
> > If Linux is going to support all of them, it may be a maintenance nightmare.
>
> I agree. There is also no standard way to communicate the implemented
> privileged spec level e.g. in the device tree. The base integer
> instruction set version can be specified in the riscv,isa property, such
> as
>
> riscv,isa = "rv64i2p1..."
>
> However, there is no "extension" for the privileged specification.
> A method to specify this would be helpful, especially since the
> bootloader may need to enable the MMU before loading Linux since there
> is no way to enable it from S-mode until v1.10.
>
> On the other hand, there is relatively little changed from v1.9 to the
> current revision. The following list has the differences from the
> current spec:
>
> * The PMP has flipped polarity
> * The mcounteren CSRs are split
> * sfence.vma is sfence.vm (though this should be handled by the sbi
>   anyway)
> * satp has a different name, and mode no longer exists in the top four
>   bits. Since these bits used to be part of ASID, it's fine to write the
>   mode to those bits. If linux never switches from (e.g.) sv39 to
>   something else, there will be no observed difference either.
>
> Everything else is mostly forwards-compatible, as far as I can tell.
> That is, assuming new behaviour on old hardware won't cause problems.
>
Even if the changes are minimal and we can easily hide under macro magic,
it will create a bad precedent for the future. What if somebody sends
a patch for
a non-standard extension and cites kendryte support as an example.

> A sufficiently smart kernel could even detect the version at runtime by
> intentionally triggering behaviour which is illegal depending on the
> privileged version, and then checking for an exception.
>
That's the maintenance nightmare I was talking about. For kendryte, it
is only few incompatible changes
in privilege specification but what if some hardware implements a
variation of hypervisor spec or vector extension.

> --Sean
>


-- 
Regards,
Atish

