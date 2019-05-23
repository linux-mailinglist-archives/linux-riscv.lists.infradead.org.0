Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A4027E67
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 15:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjRNboxXrpmQiVNn21ESuT0kj+u71kD0twe7bAM9P7c=; b=nvCeCz0plgo0Ds
	IkbgpL822ZRpsE9E24lisiCshLtV4GUXP8efSKM47iqk6vaWuLT40LCekeyVhl/xQUZNlwuShMQ2U
	2twWzVEX/WkYdQI+2SDeB/GyZwQaddGU1hd+T+NEoUHRUta9NRk+dt6MxfGbceuDyGHmXNBplW2hn
	x/1bFLwM2OjG3PLV+4PgVRH0DFoijvkcaSW6rVxMcQ2jupk35B90l156FCO7dvGvh5Azb7tLV1GZC
	SF7/Rt7kBV+1uVddFlVJgSuskqarNXjIUHf7mjy78OSLn5Q270/pq57bHIR94uRe2RVppO08rJl6G
	JF1nZBbQNKVl98FdSwnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTo06-00067k-J8; Thu, 23 May 2019 13:43:18 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTo02-000672-Gu
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 13:43:15 +0000
Received: by mail-ua1-x941.google.com with SMTP id e9so2179295uar.9
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 06:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kDtnRElNuUyMt12FB8Rk0MvDHzUU1QwxTxxj3HBh2vw=;
 b=F5HMpVG3EWCJPzMlJKs927sGGct8xw/xB0Y89Vgc09MmTe9qCI0EWFwkd3F7L+ZqFU
 kWHqmexwtAqAJgSeoLTmFnZylC+rm5Br2x4lzGtcs02ZZCavNG2Gf5f+gE/JWhQ/Ivs/
 8x2rRNG3Gb6qPEUUT/ibkLnE5XHfMOxE1oKgDBsbVXYeq/geXD2fm0t7ZMlNcI6Ag/XQ
 tbJ0nagR/yajVw57nuQCPVX18YlRvtDzNv8eAC23gjHJgwzVXV5xko9O2KehbFq5yR5X
 JXt7dQUscteyeiumbcstLMRjk9pfvtsuAbcAyqhHrkbkUqxZO4aGLoi3vYUAgFsAwP9e
 VWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDtnRElNuUyMt12FB8Rk0MvDHzUU1QwxTxxj3HBh2vw=;
 b=H7G9pAYAwY/MHJI4sYZZG3Pi88Giac1HKMM7LDCrHGli9S22l2BpRBUSywW6CQVfwZ
 x+S9XrGrIeORhShxcHe4jQ9C/HIXgdbgX3lT48AEMhfwJi3b2mjE9clX+VGkxfP4gMZM
 u4jDCFoL/U0QJHN+5OHOrDW7B5pkZ/gvRa0pGY3iU+ORkE9s2SSueG1lkuRUzt9XGHYT
 P0F+tA7Ak2XNsELE1vbwU2diFxgK9BoypfBNFXErk4JFrxrZvAjgCp4HR1d2wJA6I8B5
 0CosCzVgsxCc/tNox6YDa+CVbGoHk0ueUnef++k8DC/MK/6sQwDjPxe7GJgE0F8qZyIr
 Kr8Q==
X-Gm-Message-State: APjAAAUgAiZdxOteSlg8KYdG5kVyDZPMxqnR3LQBj6GRzdPO8lBSZbpj
 rqi92B+IXfxubp316mNirQBDfTDYxlP62R+q0Pk5Qw==
X-Google-Smtp-Source: APXvYqwGxws4eO22FIKVa1UIaqOVwcqNo2ovHYADpIBiJJe9TRlN+UMwHQoxWg/gax3t035v1obA5yqmm0zqE+T3KI8=
X-Received: by 2002:a9f:366b:: with SMTP id s40mr22365743uad.121.1558618992582; 
 Thu, 23 May 2019 06:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
 <1558515574-11155-4-git-send-email-sagar.kadam@sifive.com>
 <20190522194529.GJ7281@lunn.ch>
 <CAARK3HmMVibudG2CFLBoMSAqnraXyirTL6CXYo1T_XJEuGJy7Q@mail.gmail.com>
 <20190523123435.GA15531@lunn.ch>
In-Reply-To: <20190523123435.GA15531@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Thu, 23 May 2019 19:13:01 +0530
Message-ID: <CAARK3H=BPT3aGUGiQvov5aqFRNVTSeyqJ-bNGw6uEoU7c8iiJg@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_064314_698349_5A0A4CF4 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 peter@korsgaard.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrew,


On Thu, May 23, 2019 at 6:04 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Thank you Andrew for reviewing the patch set.
> > Can you please let me know weather you or Peter will be pick up the patch
> > for v5.3 or they  should go in via some other tree?
>
> Hi Sagar
>
> Wolfram Sang should pick the patchset up.
>

Ok, Great. Do we need to write to him about this patchset?

>         Andrew

Regards,
Sagar Kadam

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
