Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93033818EF
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 14:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO+wbpyEJaxKPLiEHw/52aEm97M5XvS1+j+os5kwC60=; b=slorZFHsWI/bMu
	Am50hiCOPARHTXjC7byHaz7H8zbIGfGxfm9xe7xnqYz8QY/2Gemn6P9Cw6AG1jBw30/AV0iQmoHQg
	pt2HWQvxhMFZWOVQ2ho2+YiZygm4PHF3eNL8tuXlxNkezpG81+wdQPoybdBzoUycH32InZdxw384o
	2iz3Rasw2tWk956ol4irkawA3zZ5NRujVaMmFO1qw22gaQ0Q61b+dxtPLWPI0RHRYTp6E/YGyoiK5
	kDVBadvymV26EFfMYcX3wkHrea6UPg92csVcjVkywHrheYDG5roL4HN5oKIiJ/iXUuPEQxxyvb3aP
	JAN5Kxav7JnEJrBZKaoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubs0-0001sJ-A3; Mon, 05 Aug 2019 12:13:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubrx-0001rV-KZ
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 12:13:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so6549627wme.0
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 05:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0wxhgVqa1i5HebLBuhj43emhxcpL4j6myhHfva4riI0=;
 b=D9rI32DitY/CLc62d2LYXuif0Sbwy/BVZgEu6va3gBgeD8+1ddHIfdW7ic1Zh2gEhq
 W44Qc3nNnlpInYGMKMRkxAcobDCOl3hPWqCvlhgC7zWJKahoO7xyygJx7raDpU3RdEHL
 9vMB9ahaW6qDtb29DKRiWz5r+OL6qvF+gUoOahe7ndwA6mWCAzaAuzjivLCFSWILYRVF
 jvGOFLNavph0BxW02G76lSInbZ60CNfUihG89FP99cZxyY2eZNJ8132Qz2EzW3pgj9Mj
 esX4XUebXFy3HmJ4zOxgr5B5FJn+vD5Vv9WbihVVGNAGfERb5klJIdJL86Tfaz2mIzne
 Xwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0wxhgVqa1i5HebLBuhj43emhxcpL4j6myhHfva4riI0=;
 b=eimPs7zAkuuOsmW9JhIL6Mr3A9xue3UZs9FY7IsAU0LqvAMG9kd/mn6y4UPja90TT6
 6L7GnOhFb/l2XA9JsQl0rVfT3C2d7QkSXbPAVn6Ao//s4Fa7ZLE+KDdw2F+bb1+qX9zD
 8NKdnCrDAPebDEyKk41QdXukn7kLZqczzvJcXmFc3D8qrJxpnwDoMs/5c4CEeG94pcy7
 XkaYRPGr2OJa2gRc5QTSvYH1XopR7CohAkncysTag5jcKJOKylUA9h1SzrUdu5qbqjxM
 GYSp6mNgMOh4dl6YiFN6ofy9BYpT5eXwBz9W2PAOqcfc0pQVDNu96F3IMhbvkimVW2Pp
 ZkOA==
X-Gm-Message-State: APjAAAV2NkDcbNqFqlb66i+l17kGewmwP3b2BCCH8H16PjOxwMclJdyW
 ciN+I4yUTpnU21Jejk53HEbvNGINb+smSNAk1gs=
X-Google-Smtp-Source: APXvYqzTS/w3xceeGnXPkz2ziZ/qExTBJtgjboccYQd7cdW0Ah42GE9a/wIpMA5BQWIqpCVbIOmkP50fin5L4WuSmpo=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr17300244wma.171.1565007219377; 
 Mon, 05 Aug 2019 05:13:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-8-anup.patel@wdc.com>
 <edbed85f-f7ad-a240-1bef-75729b527a69@de.ibm.com>
 <CAAhSdy2PDSpTy1JEEC2LCB4ESvZHBbkVEZ2wqz-D2b7SKD5VSg@mail.gmail.com>
 <09417197-36e8-718f-f106-29466ef406e3@redhat.com>
In-Reply-To: <09417197-36e8-718f-f106-29466ef406e3@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 17:43:27 +0530
Message-ID: <CAAhSdy1tfL6uLeXANzuZLidg9E-YTUfDQU7zxhBz1_AH+BvZaA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 07/19] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_051341_678278_AA3BC46E 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 5:31 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 05/08/19 13:56, Anup Patel wrote:
> > We will certainly explore sync_regs interface. Reducing exits to user-space
> > will definitely help.
>
> sync_regs does not reduce exits to userspace, it reduces ioctls from
> userspace but there is a real benefit only if userspace actually makes
> many syscalls for each vmexit.

Thanks, got it.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
