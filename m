Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D74E1838B3
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 19:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GC1hJ0DiMLggaOOzuLUWT5Y1sQSCC8CLXzsGF7PTNaw=; b=bs3JHEmYKbdEsw9PetIOiGX7x
	gGtd42EY4AYKEevrWEIYagUnM4P46PuPscazWSBLxkhKyvL/ZCI/6qhNxuJNd4tk18S7n+HFSmhYl
	HZdZLsZVGe1fvHXKXPkTPoouteeFx8v0+dLG4lYphyKrvZaGnU4WvVrec5R2OkcA1ilVsvN7OJ+rl
	6h7sL64jOxOBKjQZfrw2rDI4sX0NhMtGENvnjeYOlITSOS6mN0RzDGGRP8gOUEwDRajnE9jSnOFTv
	QsZlgsD08F93m7YcfIMQcTsFHh1HSVQ0P+7KjLYIekPPvhhECEz27NBOIt83vtXhPOa23H0pJZ1d6
	1Gohb6lww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSaQ-0008PB-Rf; Thu, 12 Mar 2020 18:29:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSaN-0008O9-1J
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 18:29:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id f7so7496003wml.4
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 11:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GC1hJ0DiMLggaOOzuLUWT5Y1sQSCC8CLXzsGF7PTNaw=;
 b=No2CoXKWyyXJfBP/s7eCianbaDn0WKBYKtzHZlqcHx0lNrk3oWIHtXs/OsWWL9/cuR
 qqi/shI2ZQduoOWyVcj2InfUiWoKCwpsMmBJ7/Q1Suh00vZTYgGJ8o7+U8N4U8Plo7hE
 zrZZgISXLg71kvufW0TLpkokJLfdtQVijN1GRj37Nf+Za+1BHBXUBLtkGAaguPZ9cU1g
 4rEXbYWHPyW/0oGDxq7JZCIjveZWrZP2R/O+P7E9o5lrEw+blnqHKsnZ11Sr5zhUXKrz
 5CD5TqsTUW1XNptSyybr5yiCoASs17zgxBdHxJQ1qhRQr2rJaM422GqEgxkiMwEq9RZU
 s9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GC1hJ0DiMLggaOOzuLUWT5Y1sQSCC8CLXzsGF7PTNaw=;
 b=nx7yZias2LLtdKpZ3y1Ga591bsLSyGsFz1z/E5ceI2NTvN+8alxSXJwhrhLHY9U+k6
 NbtYMxQYA5sx6A6WJ1LnHYST+6+gmN6VU3B6VHX4l51Vf5+WAizjQ43PcX/UAO+ugsRs
 +HVRcl9HlUd48A9sgQ3o1P96F02JAedZ/e3Zkw9twmHw0zPQf/5jKJw6rULMOOQJpgAG
 AjgOZphwOJaZ4fzjdfq13oE+ptfWnqFKVpIQEtd/AbPekL8H4o8JSTbeun6yGSftj8uE
 DluGnxcwFVuH/6nqRMenh8uQx93sMKmUvGSUjVBZpqsUhfFSODPWR369PLHZOVC2Oviv
 cIsA==
X-Gm-Message-State: ANhLgQ3lbPX+bNX6XBNzqh0O/+HD8LBimheozN2Xi3eYnpS8RQgbawWW
 UOundMtoI38X5yJLrRA8Fa208SJavVqqx0ZtBiOW
X-Google-Smtp-Source: ADFU+vtpwFvavhqnJ9voxET/cqJzGc+A4siwYSqn0Tn0/lc/1pu0NurLqX61T0lZ0BbJZHUNAknvpzPXP+5hAutOzAI=
X-Received: by 2002:a7b:c391:: with SMTP id s17mr4858935wmj.55.1584037773015; 
 Thu, 12 Mar 2020 11:29:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
 <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
In-Reply-To: <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 11:29:21 -0700
Message-ID: <CAOnJCUK15kiMohMoqfPUNE43Yq+BTW=kY4AHYjyKkdr9Htg-ug@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_112935_079378_2E64751B 
X-CRM114-Status: GOOD (  10.28  )
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

On Thu, Mar 12, 2020 at 11:14 AM Sean Anderson <seanga2@gmail.com> wrote:
>
>
> > I don't think supporting old specs in Linux is a good idea. As per the
> > patch guideline
> > for RISC-V Linux, patches for only "frozen" or "ratified"
> > specifications are allowed.
> >
>
> Well this CPU follows the v1.9 spec. It's real hardware, if it is to be
> be supported, then the 1.9 spec needs to be as well.
>

As RISC-V is an open ISA and it's continuously evolving, there will be
some hardware
that will implement old specifications or non-backward compatible features.
I fear the number of hardware with such features/implementations will
grow in the future.
If Linux is going to support all of them, it may be a maintenance nightmare.

> --Sean



-- 
Regards,
Atish

