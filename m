Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CBD8C5A1
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2YPaGzqXdLm11JTlCWD2Ugfjf8U3E3CZcfIPTSpxzg=; b=jcXGk+YreX6L98
	wOkcPbLsxaL1U96QauAwcGbN8vSfpTsAqDAsg+z5LsukebKWaf5O4FaaCpKIKmn6Tu12P7j/MsOuM
	BlDbLxAjC77SOWHQnqelmDqJSHbpSOyVEAOcu8i7HAepztA9rEuHl1QRH8gicWkaC0rk194hfkk9Z
	Vnikm5xb00CLWRgYOgF/HIW0B4rpRbuxSMcDXQb5QW+1gSrg9dk12Ph1nyK0FIaLsxziSXjVM3U/s
	EVtgS535Ue9Lw0I3NZ2+aAnCkYCHIUwczUnhfEmm9Q5pOwx2SAUpnPAH1XNwtRWMinoUeF/e5Enj1
	lMgN8J4xuAyvt8hT5+6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxiMb-0007dT-1O; Wed, 14 Aug 2019 01:46:09 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiMI-0007aG-8D
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:45:57 +0000
Received: by mail-oi1-x243.google.com with SMTP id h21so1531775oie.7
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 18:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9fZGGflcHSO6++NhFYLpIqwxfvqbffISbsrAMMT2Dzk=;
 b=ksZ5YGUjNXobZyPLfwAAQMKGG8OGkzL5xNvBSPDRQVxxsPqDOYDlQJPpZcxXmKgCL0
 IW7G2Z/WCnAjH+mnJzQFhjKsz5jXULbm9rNlirMr32SZJeoyKd1lnYvFhDgqtG/Ho7Dh
 HP126MRyLkQTxd3tCozy6FwqMN7VTAE39GUQTZl/R6qFq4maEqJecfRZEX7WKzjLNTsp
 dhvh8buW+JavLizx/kuQV4NJ9q3GKdIpr3w1HpFq6Oshe21aY9PM3zxVtvP+FjANyQ4b
 MhIbA6PwzgoRiSvbdQfxJOEgYayZXwrPd85HZ9dwfKp/mh/YLOf0sc8nczy5Nt4bpbmj
 DgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9fZGGflcHSO6++NhFYLpIqwxfvqbffISbsrAMMT2Dzk=;
 b=ip86HBg5PVKwcpB0EjVtGK2oOdLa0uwJrzFt4ViNC299E/0N9xADdFnxTtsRm00QcE
 d9PmIdS93iZqUbf2Tf3GU6tcoCZ2i2bmWyA+Q7sNp3itMaBDmbAgvinFSXBDNX+X1K2d
 TyXjgGG5WzhtnQ/cMoWBXMLBcopGWZZhpggwK8EPKVAhV47jvwPRi79u5wlPmwjH3LYW
 l1JLn0vbfA+5v4/xzfR+mFk/bgp4yeuB0vKadJ7tGAKFKQzzz+LilMz22kh+GWstAdIa
 3n4/vPAVB9q/8MiR7wfj1DmBmJ5CdimmMT+BfaQ8o3KiVU+h7YUNFQGT/YsfQMRjffv8
 t3hg==
X-Gm-Message-State: APjAAAXWoUGqUsXiyRGwpBTYPTE/nSzSX6t1UzKZETR18SWY7fRVPxyC
 pVCszATDS9y9koPaFa1kd/SclTg4qcvY+fGYVSuAaw==
X-Google-Smtp-Source: APXvYqyuKYoG2z8x+utlTG7GYkCrZ6xSw4dAV5128rMNgdisgD0O2/PVakMv3+vupQM4KHg4U90WmSfubI0A1WzKinM=
X-Received: by 2002:a02:2384:: with SMTP id u126mr858943jau.30.1565747148032; 
 Tue, 13 Aug 2019 18:45:48 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-2-git-send-email-vincent.chen@sifive.com>
 <CAAhSdy0BNN4G270WJ+OqrFAv3-z9o2iE+QDHHo-FY0fqh5wGqg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908080846220.21111@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908080846220.21111@viisi.sifive.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 14 Aug 2019 09:45:36 +0800
Message-ID: <CABvJ_xgHVT4QKAxRPdLQp3Q5bTmjQ5QfTo6R49Z0Qwatuc_b+A@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: Correct the initialized flow of FP register
To: Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <anup@brainfault.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_184551_171699_F7ADF461 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 11:50 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 8 Aug 2019, Anup Patel wrote:
>
> > On Thu, Aug 8, 2019 at 1:30 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> > >
> > > +static inline void fstate_off(struct task_struct *task,
> > > +                              struct pt_regs *regs)
> > > +{
> > > +       regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_OFF;
> >
> > The SR_FS_OFF is 0x0 so no need for ORing it.
>
> That one looks OK to me, since it makes it more obvious to humans what's
> happening here - reviewers won't need to know that "off" is 0x0.  The
> compiler should drop it internally, so it won't affect the generated
> code.
>
Thanks for Paul's comment
My thought is the same as Paul.


> > Apart from above minor comment, looks good to me.
> >
> > Reviewed-by: Anup Patel <anup@brainfault.org>
>
> Will add your Reviewed-by: tag - let us know if you want me to drop it or
> caveat it.
>
>
> - Paul

Dear Anup,
I suppose you can accept our thought about using the SR_FS_OFF flag
because I didn't receive any reply from you.
Thanks for your review and comments.

Regards,
Vincent

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
