Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD31279D2
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Dec 2019 12:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mH3XZT+YMNHEJWKS0Zd0RJBzA4An1P+4VwftqqkQXCI=; b=QthP9KSWhkconz+hyFA1oA5TV
	yW6jLw1Zzxey47ad9Soa4Wl0fEoZ8H70aQomJxK/FLB/QdugQiRW/X517IdpesTv2dEJ3lZqm48l6
	+S31twKbppxnkmIW/ZC3SG3t1UfsoUFxiQgCILFIMtFkxIv5jMjYXdViYp9o16vNg/bTNRPuCqmhT
	iGs0s4hEp5UjaZfnOcM51n4wjtCQv7oX084bsw9wtm/c45k7oBdxpRcJ4lwcmM3SLpRDk8pgraIZn
	29RKH+0gfXcMhanae5xu/9oI9kjahKgWZcLp/A10ffTs9gohEugTB7XkBlhl756yDita6JT9MjWiR
	+sNpRxQ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGER-0000oe-Py; Fri, 20 Dec 2019 11:14:07 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGEO-0000o6-9H
 for linux-riscv@lists.infradead.org; Fri, 20 Dec 2019 11:14:05 +0000
Received: by mail-il1-x142.google.com with SMTP id v69so7613452ili.10
 for <linux-riscv@lists.infradead.org>; Fri, 20 Dec 2019 03:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=mH3XZT+YMNHEJWKS0Zd0RJBzA4An1P+4VwftqqkQXCI=;
 b=ZVZg1Ei9PZeqOGZ7E3o0PzlpZC/Y2zHtJHvS9v7Gg4q4zHc97XIUnAe0tEX88dcrJ/
 v35tdd1Z5nTMN3Yng+ZXzB1gpU1cLsmP64/W4rEdWsCbZc1LtNYx3nyQs+7rnXXQyI/1
 JoTHXb42CDSz5sC6MEmOyNcsKSbxmcu9s+dQI/bGYg6xorIYrL1dmd+oIMK5OQP6G1dK
 0nLReX9nIc2H0XpAsaWNP/aw9BMBFW9JbwVH5rqnTS0HDZASuaeJPL0ndK8vqPbzBdDv
 kZIB+cF4E3vm/5QuyHLsblIW80MBddUNWNqP/k0ZsYQmsGYEC396MgokanqsYNlkyyDj
 UDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=mH3XZT+YMNHEJWKS0Zd0RJBzA4An1P+4VwftqqkQXCI=;
 b=FapZJW3w+DERqN3tLEJo8rNw7SkiKptjRgB9hpr4+wLulEBrDpCJ7WIXKTekGVSVOh
 fPRNiJeY4RiDv2x6oywHGI/yUjDs+JcllqXWpDnVRkLfnz271lcWJjz5E4uB9MIvKByv
 Mn35lcz4hxCs1D7Sb11KPViFrZPOcVgBeFIIKwJJmtT8/aRaTgXQU0osRbuj0GRMVlwp
 rh2uM06aPSE3ZIlKdjfnGF3IZrw6LVM88SjU2OjezduiwjDT8Iq+CPkbLiEwfhoLORn8
 2VsdcY5czESZkhHpAX/CS3ykOUUn/NsNsxx5jKEdx5Jgu/BRiyyfPp8+3Lrxkb0iS0hD
 DIWw==
X-Gm-Message-State: APjAAAUxWXczWahZZZRif6W0bl8dRDYS4v1USS6fKkV1td9rvwA0V1os
 7Uevr6Qpk55ju/3H3A3beXUM2A==
X-Google-Smtp-Source: APXvYqznBuM585NgLqPzogn6fCMIQ0H/MasG6SulYfokSLcS+K9NM3LiM4D14DprkMSUJTp4ZsBbYA==
X-Received: by 2002:a92:d7cd:: with SMTP id g13mr12329966ilq.300.1576840443304; 
 Fri, 20 Dec 2019 03:14:03 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id g62sm4389797ile.39.2019.12.20.03.14.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 03:14:02 -0800 (PST)
Date: Fri, 20 Dec 2019 03:14:00 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Patrick Staehlin <me@packi.ch>
Subject: Re: [RFC/RFT 2/2] RISC-V: kprobes/kretprobe support
In-Reply-To: <05082ba4-33d6-a95c-e049-78791dafc009@packi.ch>
Message-ID: <alpine.DEB.2.21.9999.1912200313100.3767@viisi.sifive.com>
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-3-me@packi.ch>
 <20181114003730.06f810517a270070734df4ce@kernel.org>
 <20181114074951.0902699286fdf8652f2878a4@kernel.org>
 <05082ba4-33d6-a95c-e049-78791dafc009@packi.ch>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_031404_378545_A531DFCF 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ingo Molnar <mingo@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Anders Roxell <anders.roxell@linaro.org>,
 Alan Kao <alankao@andestech.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Souptick Joarder <jrdr.linux@gmail.com>, Zong Li <zong@andestech.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Jim Wilson <jimw@sifive.com>,
 zhong jiang <zhongjiang@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Hi Patrick,

Are you still working on these kprobes/kretprobe patches for RISC-V?


- Paul

