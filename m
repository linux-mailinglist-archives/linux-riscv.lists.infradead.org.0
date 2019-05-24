Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C6C29ECB
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 21:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUyugT0yS9b7iPgZyMtTeJpjSDyyuX5J7VuEYbEnxyc=; b=FBDOvaZttBPxJ+
	C/RDcNWfuoxSHyjd7NKUMembrQddlRjM72wKwTjX563rzyOA0H0AvVNnuusmXNlHB/x4F6ppZn7Cp
	u67OevBGme2yh0o/v0Ovo6V6RLTDP0CcCm0Vh7yk26SnMWFx++XS6EVtQaHOALwKrPo6e3UnVSlU2
	+Efntj7W/yKNvVYMJlCHdZxh1U3zYZtHjfEfLqe8uW3FCJDSBUVkYsXh20b4v390ja3lDMN4O85II
	rzIOfz++/M9XivqI0nQdN9OGPMv+rpECtB9etU4OnJUn8sLG/8IauA84aZSkO+ML59laSBy6IKA8A
	kdEVOw5IdX+BLqnirj7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFVe-0005Tm-10; Fri, 24 May 2019 19:05:42 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFVa-0005TC-O9
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 19:05:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id n134so7887190lfn.11
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 12:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IcAnH86T3sfcO/+/fzByIpUjk5KavxuA9ijhPaAlaz4=;
 b=YWjJZ2ogxHjlGra2IM05J+QQPhsEEj2UdAth51F3bn84dK8qZS4jb5swkCY+KW1sNe
 6l8nSTzSrdTcP6xAIrHSfY2RQHZSTlDEezD/AMSlUeVFTQ1HJvx+ObDTpSOe0a7ELSC5
 4tQZQrMTwOY9b6qZbpq472xshbHFsaXsqhw+iGC9db6tqfUqCW3n41QMBGPszEwPtEsz
 jT9RD1kR+TWX61kyAs1TumVhYdasmYmo3PQayThiOWGGiFOlaVfEDsTTTGxsaCHFtS0l
 MMevMzmmYDsGJgPKwJ/v/ZoA4s0y4tUPshYri/emyyf+Jp8i8MgEWG1vg/EOlX/mFf+4
 pARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IcAnH86T3sfcO/+/fzByIpUjk5KavxuA9ijhPaAlaz4=;
 b=mxekKJpr83sChjdxu5lgcGILlPe0p9xklagyioL2X7gP57X/Wx2JnKxbcvZHBo5Jlp
 /HTeh5Zveht1vpUtv76vqVgbmmx9JhyMiqnCZsaOHkj08piHr2vC/c6gAz08ryG0/eW4
 Lg8hDU2xCUEo0JWPgrE02mBou44jDCUKWH9T85wE91Oyj4XLE49y6mPMSlMJpEhiZpWI
 tXSw4+yifiaEB5pURivHr4ZzNG+AJ4iG+Oa4kj16ehaPKiUx6pQDlkGMtl1iNsxYuk0d
 eOfXk74Mu4Uk104EUZK1CUGz0lyeJPbJTuQ2OXCQlSfnjgd+GgbKuh7bXTzgt35RQZFf
 xXnw==
X-Gm-Message-State: APjAAAXvU3aLFHZF4dFXwsiE7DEHR/lKWVJZ8Q4YjRouc+CYzE6J43SF
 oFbmpiIY6hy+zf9eOhnr/wSWTHOA1t0u/66RXmYCyg==
X-Google-Smtp-Source: APXvYqzL98vEC+5SIhjQeT4fwK/3q+uthND66cXfJWhz/scyFl738RRZzV0mPm5Q1F8WnTHwpo8eKxxsMFWCNB/IKJM=
X-Received: by 2002:a19:4317:: with SMTP id q23mr824079lfa.185.1558724735866; 
 Fri, 24 May 2019 12:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
 <20190524063809.GA25866@infradead.org>
 <alpine.DEB.2.21.9999.1905241200070.31734@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1905241200070.31734@viisi.sifive.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Fri, 24 May 2019 12:05:24 -0700
Message-ID: <CABEDWGzbg0tU8ZnEYSOrivhek82Emv3g3Y9X-jv6-svLypXbuw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_120538_789730_5F2C1A97 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The get_maintainers.pl script also suggests linux-riscv mailing list.

On Fri, May 24, 2019 at 12:04 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 23 May 2019, Christoph Hellwig wrote:
>
> > [trimming recipient list]
> >
> >
> > How is this related to arch/riscv?
>
> This was my doing: I suggested to Alan that he copy these messages to the
> linux-riscv mailing list.  We're seeing interest from people who want to
> build PCIe cards based on RISC-V Linux, so I thought it might increase the
> potential review coverage for these patches.
>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
