Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14774137AED
	for <lists+linux-riscv@lfdr.de>; Sat, 11 Jan 2020 02:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kJ7xbVxtwPEzAF+se04VqwxgQEGFSkrxN6PInKK4g18=; b=hpPiuNHFeIDKls0pZ4AEKP0yI
	tnpO+RDusP4mQh3kJUm+dvUzvP+L8i0t7sZJ/2w1RlGZ97vk3jEpBGvRyPrci4BBNw0N96RY2xGka
	ERwlyTF1OqLkEpcU9BXfAyBznXj1qDUCy7T1CJGJIwYL2BdiM8dhX4OVPoohQtSy+7+2CFFE7h0zN
	YxRg8/wiB61MPnmChmuCCgnmdVC4lv9rMr+vnJnNE1WCiO2Qa8Bz2BVJARuFCCRmU18dVgROw77DS
	YemM/hvlJO5XppggPBbmlwe/EHY6UljsxgbQeeWCEJ7cmI4IcvBU4tg/hqLs/tfSkf1AVPu1nZOn6
	T2MBfl0Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq5c8-0004YJ-IJ; Sat, 11 Jan 2020 01:30:56 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq5c5-0004Xy-DG
 for linux-riscv@lists.infradead.org; Sat, 11 Jan 2020 01:30:54 +0000
Received: by mail-il1-x144.google.com with SMTP id b15so3298239iln.3
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 17:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=kJ7xbVxtwPEzAF+se04VqwxgQEGFSkrxN6PInKK4g18=;
 b=f+zFDYAN4/EL5Kpz1xl4MZTusWwAsEndfJyrqc2rm3YlZrxBq0iogepFL9jtdkhT3H
 eUQjXMJZ9S+EIqgikcqaaUTCiBnnugQWTdOVIh7rDgqm6pN0WsQG+mK53NKTRM//tAsN
 m9ThcF11//B/phL21f0wbDiy6lCVvVnVZoNFs8gpnmZ3xkt50+y4FpJQC274DZVE3hZC
 asWW1b9jDpvGYJNYaNuQhtK2rTBZwwMbiQA30e2jSLFB674Df4jESm1P9EOSjEi3NIRW
 06HJO44VYuMkMx6Jls3cNOT1sa9LFbmlqxdjkxu93wKA0Ep2A10FEfZhv87B3NRnbvvh
 7tGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=kJ7xbVxtwPEzAF+se04VqwxgQEGFSkrxN6PInKK4g18=;
 b=W9NQGhqZFS5Ic7svPMO1xVs1Vmyqr3dj754GI/agLERiNcV9/ESL8NYpzwJUdyweiF
 7NKhEs2pexVzBwzFeCzCGDHyRGrQtD8gIWLm3AvuTLOyT/kKhKZyy5z19EUGBZ8Lgukt
 3Y+10LA6o/LhDTeBotEmTcODvxB2s/yR6X9vvCpVapzGqpa4Deg59VJL81qMUdgqs6y/
 rCvhWHNplajTNXPo1Nt2KSzvvSkbjIUaVhi7Ig/lKgRLJKy5jGAQqpWp6hPNOe1aqRw8
 +tJMFqnRvu7cKMhFhbbJsFYPz4rgHdfqlfSj5cvktz33AhmHSeoocn/tagtWmchhGc/d
 z3OA==
X-Gm-Message-State: APjAAAVJC6UH+8NFECP85Q+0kca4siJH0PKxUQH5Y9CEwtet9eQfLILA
 OGLv9DTymUKSEwFCm+xn+JLTHg==
X-Google-Smtp-Source: APXvYqzWFX4H4Nqk0plSxJ+POvbf5RF+Ea/qNv/kluRjeJOkrIPJKvY1jK5CswtigjH1VedncaXqyA==
X-Received: by 2002:a92:b11:: with SMTP id b17mr5323857ilf.202.1578706252651; 
 Fri, 10 Jan 2020 17:30:52 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z15sm1224781ill.20.2020.01.10.17.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 17:30:52 -0800 (PST)
Date: Fri, 10 Jan 2020 17:30:45 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: guoren@kernel.org
Subject: Re: [PATCH 1/2] riscv: Fixup obvious bug for fp-regs reset
In-Reply-To: <20200105025215.2522-1-guoren@kernel.org>
Message-ID: <alpine.DEB.2.21.9999.2001101730140.38813@viisi.sifive.com>
References: <20200105025215.2522-1-guoren@kernel.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_173053_479151_1D30993F 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, aou@eecs.berkeley.edu,
 Guo Ren <ren_guo@c-sky.com>, arnd@arndb.de, atish.patra@wdc.com,
 Anup.Patel@wdc.com, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 vincent.chen@sifive.com, palmer@dabbelt.com, zong.li@sifive.com,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org, bmeng.cn@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 5 Jan 2020, guoren@kernel.org wrote:

> From: Guo Ren <ren_guo@c-sky.com>
> 
> CSR_MISA is defined in Privileged Architectures' spec: 3.1.1 Machine
> ISA Register misa. Every bit:1 indicate a feature, so we should beqz
> reset_done when there is no F/D bit in csr_msia register.
> 
> Signed-off-by: Guo Ren <ren_guo@c-sky.com>

Thanks Guo Ren, queued for v5.5-rc.


- Paul

