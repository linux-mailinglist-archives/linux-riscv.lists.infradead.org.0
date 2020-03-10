Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DEE17F260
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 09:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nSPxA9X500mgbh9IFPNCBvtp5v+qregrP1EhmFh9wNQ=; b=CI8/WqUfMCwKx+e+FxCUN5/C0
	rpKSD/L/AdjcOAHf0Dj61FPwONySycBore7ZaVUX5XKSsDoI4qrUSzehtKrzUY60kiAGHHtaVOXnE
	UpzXhSVCjnEd2ndkGLb/Z23BZFCzKT9iGeRgD9BhYReDe05dhkC1LIJeMHcQnVfbluuxiWUu6+gdx
	ofyyxmierEp1dNR/D27Jmhz0QC+yh9XT1HQra5O3Kf2j9NolWrEXz+Ubu/y5zWOG+ni9mUe9nNj+V
	G7KCLyR0m8JrhBnuyjbGaR6m5C8KD2NNK0UId9gMLezg1gAVjqUYLiGC37sTjtIvMSXFRGrwLj0Ln
	GwiSPrdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBaeq-0005MQ-4J; Tue, 10 Mar 2020 08:54:36 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaem-0005Ls-T3
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 08:54:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id f28so5664302qkk.13
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 01:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nSPxA9X500mgbh9IFPNCBvtp5v+qregrP1EhmFh9wNQ=;
 b=Q05xIIQLHRc1MoiGKDvABRgahTMFDzDQ4Ck1T7qE3LuZVcY7SjB9im3hZXh1MBO8BD
 tQCQ5/nKjtYM51FVdSbLdKJNHTOr07CgOD7VspKmPJLSI2nKDNMYnGh+sgs9eEgdTaTz
 UAtWopKNqaTtn6NQW1GbkupcEFOUnnuOY8xmbv1jNSClQP43hozMkqz7dq3Sywj5LGzc
 NCBDP9dcWc9zXnyQ+e1bkqZJRb9S61qNJVSKpRfNYWkUurvYLqKtbQUUF+Ptg/TB8S2n
 V1Z27CFKbaqbF2MARL6t8YH4yvnrl2r4smaHIfyzrRnX47CCFxgEcqGa2BT07/kWYY2N
 bNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nSPxA9X500mgbh9IFPNCBvtp5v+qregrP1EhmFh9wNQ=;
 b=W3IemAMpC7liSIMx0Fh0cqE8v+fE1oXtaAlW9j2P8A+exKRSzf6PWReOxDXMRZl7tA
 ePAnJIMj1dApZJ5EIwz3Uatax0Y2DkqjW2M7Ri6fqJE1BmXf+s5dX95sMmnrdrjcr07h
 olw955e1z9ffLUWtEjJ4RQSQzpIxfIm69S9IlFGDtetQuPFaJVHkai2UjpP1wEYN4M2c
 hLIk9VE5uBhRB16ZREvqDdMYMN2UsijZ8YevRZoqqq433CK5igheOAfCjGaKx3gm5+dD
 D+MPlN6nTOHYwTTH/PqeyCvJYspE3F00ogJu9HAe1qRqDaJl2R1m74MJxWcpZzMew6ra
 v3iQ==
X-Gm-Message-State: ANhLgQ1RqKngnkI/KWfO1WtDOl8MvTjh+9m+ERE2qYYioo222g7F56iV
 28XMhC/kJztcVOvbmwqhAr5nISLTIu+IoYDKdzbw8g308v0=
X-Google-Smtp-Source: ADFU+vtMECKg0iE77xyeveafTTIJe1NctM9ZS1gbqJZXUfdRwOkJDNRqliHHiYwApvHERLRaNfSDyKeu+F6P0l3jIE0=
X-Received: by 2002:a37:a8d8:: with SMTP id
 r207mr18024852qke.123.1583830471137; 
 Tue, 10 Mar 2020 01:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200308094954.13258-1-guoren@kernel.org>
 <CAHCEeh+XYD3uVmaQRGpY=VGxpO9hzMeKasNmAojhkZe9PJ9Lug@mail.gmail.com>
 <95e3bba4-65c0-8991-9523-c16977f6350f@c-sky.com>
In-Reply-To: <95e3bba4-65c0-8991-9523-c16977f6350f@c-sky.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Tue, 10 Mar 2020 16:54:19 +0800
Message-ID: <CAHCEehK0rgBpEzrWar1UTWJoOz=OQi18iw4Y+v3z5Hi=7JCEWw@mail.gmail.com>
Subject: Re: [RFC PATCH V3 00/11] riscv: Add vector ISA support
To: LIU Zhiwei <zhiwei_liu@c-sky.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_015432_966534_583794B3 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, Anup.Patel@wdc.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, guoren@kernel.org,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 6:27 PM LIU Zhiwei <zhiwei_liu@c-sky.com> wrote:
> On 2020/3/9 11:41, Greentime Hu wrote:
> > On Sun, Mar 8, 2020 at 5:50 PM <guoren@kernel.org> wrote:
> >> From: Guo Ren <guoren@linux.alibaba.com>
> >>
> >> The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> >> 128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].
> >>
> >> The patch implement basic context switch, sigcontext save/restore and
> >> ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen
> >> is implemented. We need to discuss about vlen-size for libc sigcontext and
> >> ptrace (the maximum size of vlen is unlimited in spec).
> >>
> >> Puzzle:
> >> Dave Martin has talked "Growing CPU register state without breaking ABI" [2]
> >> before, and riscv also met vlen size problem. Let's discuss the common issue
> >> for all architectures and we need a better solution for unlimited vlen.
> >>
> >> Any help are welcomed :)
> >>
> >>   1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3
> > Hi Guo,
> >
> > Thanks for your patch.
> > It seems the qemu repo doesn't have this branch?
> Hi Greentime,
>
> It's a promise from me. Now it's ready.  You can turn on vector by
> "qemu-system-riscv64 -cpu rv64,v=true,vext_spec=v0.7.1".
>
> Zhiwei
>
>

Hi Zhiwei,

Thank you, I see the branch in the repo now. I will give it a try and
let you know if I have any problem. :)

