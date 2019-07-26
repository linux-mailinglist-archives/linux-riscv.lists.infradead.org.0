Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89289772FB
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 22:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scPu4zy9kmv+KCjqerQdNiP4qfvp7HlgehwxYLkipMQ=; b=Phhm7i/Y+B1dDM
	riBVHp6PeGx8GmEKQLYJSPrnjWEOp0u6pYaMFWOjvP/JbmEbVZIw9oRJJ63TUyiaDTINi9Sx5v6wM
	hNWnqgN3p/b0haoElGhEyu9h30puF1Nmdyj0hNbMd+n+OdI0K7WA2Lr8GiK40pjy8P0wFe8wj/ntx
	2AjtJtKOQp4lqQ17LGqu7pPZw5vGQcmvUkI8qcduBGCaYhQq/DT7gpSYCrkJtg4aea3dlaWST1pV7
	Iv4/auWrDzc7ggd4D4fNXA1UYgGZ3kBneOLksG5pwOKjMbMt7JUaWKhxHx8ZppvzMyVmVzKY11zOt
	QWEv5dlNQ5zbLJxVsQrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr77t-0003WV-UC; Fri, 26 Jul 2019 20:47:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr77o-0003WB-KY
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 20:47:38 +0000
Received: by mail-io1-xd41.google.com with SMTP id g20so107469145ioc.12
 for <linux-riscv@lists.infradead.org>; Fri, 26 Jul 2019 13:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=mMbJIOT9Mkj81+DURpJRyWnAKm1UiE5G4DSpvnaTnlQ=;
 b=iQLhlbEBRwr8KtEYt5QkUcHsN7g9ET/3bTou7gUrL0NufVWuLo3Lc3Y4p7zfHTOiPE
 9qF21HURQiSY3zUkjVj3mLUtscZQdl0SISNvcDw3E2xQ0sdZT3a8q++f1llCEySh1QNx
 Zqvas98bNAxVX217PC4OnCEI9gxYh/7Sq143WfGc87TEShzOG3D/WQP8w61o0R7H+HQh
 tpkD2ZTGdX5ev7S3dVHQXZHq7zCZZ56Q2K/x7RN8vw3Nmrtd9HEMBgiP3OXMm7btq9fE
 yPFe2pDXAszV+q70PEI1DSXKl0pGvqT0MBL/YXcdkdm2oJBMpIfLgs+UNcjSuedXCCeu
 SXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=mMbJIOT9Mkj81+DURpJRyWnAKm1UiE5G4DSpvnaTnlQ=;
 b=BClYEHLk+6KZfiXD0QLtyr1mRS+UOXIgClC3Febp/hB2yDqkzNvEqmQHlJul68fP0P
 jvFRRqvJZoVcCU+9w+9rvvHvyewQ2hWH/UxXTEVCHBeN1PQ7oqoWsboRc0upJjRoCt1k
 PNTl1nU78cOpy7gNZOY+2nSoxnVR81TWiAu84uR7rLl+ZpUy1m7XVkqUrbFjCqa7N10c
 6UtGFwokvgqdubJ0P1ooI/igij9VgCxKLwGYdtMTqKclP7HCK4WrQshrdcF/Y6lHPxY0
 wu17HCkNVm7uRvS5V5fLzjAobJF7gpjXQCc2HJSI9VPRzWHE+j324sKOQs8DPoGG9DpY
 Piog==
X-Gm-Message-State: APjAAAX03yekvB6LS76HS9A+Kxo2GRfKvxnG1qLpgWbpfwcJzy+IqrYP
 B1Cb4xi70gWCIUjfQjJ/BkEcMw==
X-Google-Smtp-Source: APXvYqwKKrDjZKa5SshdtHfZGTqeOjqpdefuxyMAWSHZe6JrF8fIyDi3vcyrwB53xGMYGrzjC2LFvA==
X-Received: by 2002:a05:6638:517:: with SMTP id
 i23mr24654424jar.71.1564174055390; 
 Fri, 26 Jul 2019 13:47:35 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id l11sm39320915ioj.32.2019.07.26.13.47.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 13:47:34 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:47:33 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
In-Reply-To: <20190726194638.8068-3-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_134736_738898_ACC649E0 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup.patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019, Atish Patra wrote:

> As per riscv specification, ISA naming strings are
> case insensitive. However, currently only lower case
> strings are parsed during cpu procfs.
> 
> Support parsing of upper case letters as well.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Is there a use case that's driving this, or can we just say, "use 
lowercase letters" and leave it at that?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
