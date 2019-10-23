Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86236E1274
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 08:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLB8fF7I/YsCbNv6NmAT7e0h3x6D+qQhGUB+b5bGVTY=; b=KdLU0VmluvG4Kr
	kI5lQDQk/9jG/ioqk9hvOjfZQ2Z6pchiUHDfHnfm0Hk9+IseIq7zJNv9aDCljUIKSo9ZCiOp/sLoL
	twhQSuOvzbAA6g7zIPCxF9XCTuNhFCH4bqn16HlcBoYn6Hz5ylxf/x/p1Yv/dmrGbmW6tjbEGLyK1
	7uC+hj3cHBMg20J3qEFIij/l9Ir9vddd+p2b2fTNcaoSACci3EChh2Lhaabv0QHjM7N5SXgRakHB7
	erSrAG5fI7mr/6ZLbJS5MuX5i8lT4EwknzzandM4QIBOJkbYM1lJZpRknadg4WToh1PRlU/pUHv8/
	Ng9XBIRiflw0B6JhqDxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNASW-0007q4-Mf; Wed, 23 Oct 2019 06:49:28 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAST-0007oy-Sf
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 06:49:27 +0000
Received: by mail-il1-x143.google.com with SMTP id t5so17857279ilh.10
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 23:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=uTV1lJCzWFvRXETtO2mm+8BlPiNvkSuuO+tB+dJpstk=;
 b=HEKT0OaDe7wVp2IwPmhzg9oS8ASUNGE+l9sM6GGHumKXoFvztLhKcnEVebUveLk0lE
 ddKc0iy+VAZL/gJ/+f7zIa2P1Z+WXZxHxxuB9fDWExD3LUKHVFM50NgVxxiou+AI0T5A
 8Ond0kBE1Gbyptmyau6lVQk4kvxX0TooS1qkOnwxOvRKgnBxK/RVX+AGJe3u+7lWC3Xn
 63ox0czq78T1jQompfU6mCBzNTOvR+bR77CkQGS5x1k+W6EzFnbZPkXBybyd74hvg5jn
 8mkq8ZzYphYqQSDtI2zTISRY9cYM6OZ+GszrN9jUGUy3dLW/UuY0NJkpQudBJOk35Axo
 gHgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=uTV1lJCzWFvRXETtO2mm+8BlPiNvkSuuO+tB+dJpstk=;
 b=jJby45G6Q0LzO3w5Dhv/uHGjK5dokgEvdGxPnR1rg+IFEkLpyC5oeQB6LyNKQCf8iN
 f+7G4z2vUdTgF/ZL6Li3KpiQs6S78Cn131DXZJacP5P4MndLFPlvzmHvE9ooGgwffcbC
 +kjnLcVoN55PsIrv5cgfhFOCoQLf3kpONTkqrZyJl+jRWSVD3sFxcLfPmYMLakvT2yJr
 4/8NCElkQTQ4b+TmN9LMXEWTSciozdp+pLrH0o2P5Q6WPz/9QbwacFZzUsgyuTk2CrBi
 6h4Rqbmv2ks4l8pzyC2wxq7VJOlSDX630xC6l2fGXuXPW0CFlYp1iS1qXyv5HcNRecOh
 Asdw==
X-Gm-Message-State: APjAAAX4W32/v9XkdrvBawcr2v7k9tKUp8QkVLPsNGOchApVaRydTrb3
 2vOi+u0LCaoSd0ZrMCdaFdx84xpxfjw=
X-Google-Smtp-Source: APXvYqxCUm6SxWWwGkCNKzk9zup/53mgmApuSF4MbnOGNYdFzDacNqMKt1Jgi61RPE/SKfD2UthTWA==
X-Received: by 2002:a92:3b52:: with SMTP id i79mr18330339ila.19.1571813363853; 
 Tue, 22 Oct 2019 23:49:23 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id o25sm1577662ili.51.2019.10.22.23.49.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 23:49:23 -0700 (PDT)
Date: Tue, 22 Oct 2019 23:49:17 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
In-Reply-To: <CAAhSdy00_snfqstOg1KVookNm8kG9gW=S-7fugzv+awtk+HBmQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910222348260.12442@viisi.sifive.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
 <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
 <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
 <CAAhSdy3KccuzC0pV6Jy_diLwkdgb=SdHBQnsSoGrgpu6g7TCQA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1910222250490.5600@viisi.sifive.com>
 <CAAhSdy00_snfqstOg1KVookNm8kG9gW=S-7fugzv+awtk+HBmQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_234925_957697_457FF2B0 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019, Anup Patel wrote:

> On Wed, Oct 23, 2019 at 11:30 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> > Is drivers/platform/goldfish/goldfish_pipe.c required for the Goldfish RTC
> > driver or not?
> 
> No, it's not required.
> 
> > If not, then the first patch that was sent isn't the right fix.  It would
> > be better to remove the Kbuild dependency between the code in
> > drivers/platform/goldfish and the Goldfish RTC.
> 
> The common GOLDFISH kconfig option is there to specify the
> common expectations of all GOLDFISH drivers from Linux ARCH
> support.

OK, then in that case the Goldfish RTC sounds reasonable to me.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
