Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2C3D80F6
	for <lists+linux-riscv@lfdr.de>; Tue, 15 Oct 2019 22:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RM3xLRDEdaI+oILCq0xNMzimBr5AQWhDab+dtfxX0Gk=; b=C8REYi9FbbqsXv
	6L6f3fIhbwsHEPD86GYqY9jpU2DLiqVP5Yyfx4xGy++AAjGULMLHcdCQv+fqTFS8fMZfHYcE4OBhd
	47hww325eSIdHDzSHymaiFQQ4V+UZygFDb85Nx5XfEzfgzXEGmUeIRHfTNfloKUcxGKQmo3zg4Sce
	EPmsFQpa7EUb8i1jqmaz+u6i8iZhdMoL/e6GzOlAkiDS6ZukeOvL+U6M9ZA7yK89O8K97EvJ5d0jC
	k7U/wKjWMJ77VeMp3k5TnF2+AjGt3yR5TJJ3HBzaXnhEWdDYmj5KF2H6OWPNUsl/CBSboYnkPmI92
	8nQcAys38Zz42yhmbbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTP7-0005Ru-1o; Tue, 15 Oct 2019 20:26:49 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTP2-0005Qo-Up
 for linux-riscv@lists.infradead.org; Tue, 15 Oct 2019 20:26:46 +0000
Received: by mail-io1-xd44.google.com with SMTP id c6so49254945ioo.13
 for <linux-riscv@lists.infradead.org>; Tue, 15 Oct 2019 13:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=E2TroodgPQKmv+4uUx4dDzQXwZFOfczvCYND8JsZxGc=;
 b=Ot/Q/DpkCACr6yFs94vqx/zpralaCbwt7zT6/B1uONIvwqFbclyPz0+qDJCAR586Km
 i8zI1C3wL9kQqjEFKeKvnxfY0Po79E5QyCoCNam15K2GhIPIttu6gAktaAwgsrFLvDEa
 ht1hnLyBq8JbhgZzNZ40ky/Rgk0NCMUAGK6dWEmBOs+WBo3oBDSNwNaCAeQPyFlkUsXa
 BFge1PIjJVqz6eiZuRtoJmHwj7A/5kVX5+hLgPohPeD7uaDfVlu3/jk3xdsrrz9c9k1G
 g2uot4qVsejTCf6KAF0N1beGQR2IYn+z+aCjDVwYrWn7J/0WdvW7+EgD2wLg2rS24sC4
 IBoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=E2TroodgPQKmv+4uUx4dDzQXwZFOfczvCYND8JsZxGc=;
 b=gpqhDZLbLwtrvh2KX75QaYp/77SlNuVYLiYAmKwY86yy6JxzOyxtaJCzjliDaUJkV7
 Ys8IzhiMKDuMdk62vu7At8fAjC2QReRVqlH0jHUkjg/hXOuau4IVK9+YJa3MGW5Q2L5h
 2wm/3/AxYGaWj1uYJVM+A9OHrBV/kZyLZnbSagC+sqw1bOZj0tcC2qbXUPYO9P+/IR0o
 4fzrswFOue+HEaAm7Qd5GIYt+kK4n6/+/UDcnf291ypBWLu6G0aEtm61w9SVa7Inwvaa
 9InX52U7GyM81KuoQt3j3R7H5UZp9ha7UxqN5TY3Nz6itWeYEU/D67AhoRow18Ptgm37
 WiYA==
X-Gm-Message-State: APjAAAUjsqmeqYfIly7bG2tFJkCtMblrrFlLP1x5YDR+QfXGuyl0ArIg
 wgmYoBrnyXui4fvlm7eF+Q6QNg==
X-Google-Smtp-Source: APXvYqyoRm5IeFfTJZdypxJg9pjW2NaTWI+ZrDMYnJ1nqN1xUse5f20kUBSa8rWSTKcUV9e7ZctxzA==
X-Received: by 2002:a92:d5d1:: with SMTP id d17mr8364619ilq.55.1571171203509; 
 Tue, 15 Oct 2019 13:26:43 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id i74sm3175644ild.74.2019.10.15.13.26.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 13:26:43 -0700 (PDT)
Date: Tue, 15 Oct 2019 13:26:42 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 16/34] riscv: Use CONFIG_PREEMPTION
In-Reply-To: <20191015191821.11479-17-bigeasy@linutronix.de>
Message-ID: <alpine.DEB.2.21.9999.1910151326110.17973@viisi.sifive.com>
References: <20191015191821.11479-1-bigeasy@linutronix.de>
 <20191015191821.11479-17-bigeasy@linutronix.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_132645_006883_7F035A0C 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, tglx@linutronix.de,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019, Sebastian Andrzej Siewior wrote:

> From: Thomas Gleixner <tglx@linutronix.de>
> 
> CONFIG_PREEMPTION is selected by CONFIG_PREEMPT and by CONFIG_PREEMPT_RT.
> Both PREEMPT and PREEMPT_RT require the same functionality which today
> depends on CONFIG_PREEMPT.
> 
> Switch the entry code over to use CONFIG_PREEMPTION.
> 
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: linux-riscv@lists.infradead.org
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
