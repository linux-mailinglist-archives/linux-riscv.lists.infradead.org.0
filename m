Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F264615FE36
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 12:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:MIME-Version:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLtmUB3Trtv7u/OvBqV6MxVks5/RiaQJykLLXKuG7Q8=; b=UwtPwtZlOc+S78
	xy/QDTxV9w4uOIr+AYVAYfh47/S9r3zfcedd2ActAABBx+BQW0CUf3/MKiiuFky/OxxVUF20LKmFe
	Dy7EINam3zLb/dLd9xkyWV65bqGCxP7K8wIwrpq0/gs4mDeqQckqIZScyuOZoKvVyPYT04Yv7Cx4V
	ptqXgp5fKdnbI/xySqgQ+RHclLoyrDaidBSuHrvXKB1XIue1a5oi8nR7HoWsk2RtFfXYt8LHruJvI
	5xcPhYs8BRrm9eDqGyU+AXsDpYwkniX7HpcuHwuplOdUicqr0uNp4v5URafP7IdEeq5ktC0nnqqQi
	LUYhd+Tp4cZ3d1LOMiTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2vxu-00033D-CA; Sat, 15 Feb 2020 11:50:30 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2vxq-00031z-Un
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 11:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1581767418;
 bh=jCA+u/iWeunXisbMKKiKA03JHhtYvtZt9+PJ1WArJLs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References:
 In-Reply-To:References;
 b=svIz3e/SRwMfRYktOnp10mrv0KT3SN7Sf3QB7z7Taq7Iqod+wP9H4AozfN+WU/Xly
 RUttwDku9m4AkgE9SSl0Ut0nn7nxyLb+Lw/1f19tGsBmJnEqUDXp/D6SB8HDjyxVaP
 FK/yPv3HbAKxuJ9LT1I74K8TV9kL34hxeFjMPJus=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from md1f2u6c.ww002.siemens.net ([95.157.55.156]) by smtp.web.de
 (mrweb102 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MfqAq-1ioYKz3qVQ-00N8Df; Sat, 15 Feb 2020 12:50:18 +0100
From: Jan Kiszka <jan.kiszka@web.de>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
Subject: [PATCH v2 2/3] riscv: End kernel region search in setup_bootmem
 earlier
Date: Sat, 15 Feb 2020 12:49:43 +0100
Message-Id: <b11898805c2f9f01b10867a05701aa0fafeaa886.1581767384.git.jan.kiszka@web.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <cover.1581767384.git.jan.kiszka@web.de>
References: <cover.1581767384.git.jan.kiszka@web.de>
In-Reply-To: <cover.1581767384.git.jan.kiszka@web.de>
References: <cover.1581767384.git.jan.kiszka@web.de>
X-Provags-ID: V03:K1:dRJ78LiuZpsCOAaRFt2kX6CRQY/zfwNmeS/wQDiU3z1AmAFRFhs
 a7pkspN8g5TqXQti6GoOwOTcxgRVpyBAlFa2EVziRbawhY4KUUiD3I1zy4Lq8ZsWFN+e6A7
 Com3Vi66HeXM9fYCztbS55ZxjeSj1+Ty1jIUpdedhzMyzAONSnzJ3u1FDDZ5BIv8FQLimun
 ok88tzo/ZaDd94JCMqDvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:h4l0FGfFSd8=:fcKAdv9BAbt2EL6f6a/gnV
 XDc+YpOCOmmpw5Jp3Vf6XlH/UWBcdQnDFV44NqM4kAc5oNlPgOkrvYcScwcoCV52QV1dy3bO9
 NlWJ/Souni9qfUD5D4XoYkd7kjuv40xQvLDPB1PP5FUmBfCsidbNwrsBoRpQADynbELRhui5D
 WLI6MwPCKxettX+mH19d5W+T2tUezhfZFdtIonKLWukREWLFUXVK9cDMY0UaM4ntnGoH/aU4Z
 aq+TKlC5SWF46s4iJhT71Ly7GRDaIsf4B3vZYNdZRHzz70fWpR4Ips/BQhwFqJrW2XFZHVUre
 zZt88wwNbgkTIWOwlVFwKOFHdeIxRlx0DbEhLvuh2zROEkKSKXcDrU5A6UzhroK/khKd+eXVC
 M6UKThz43vnyVpknsDrgAMCZTvLw2HkJXFJzIchUY20V3TdGlTx6yIPABi0+gB4V4gSspQ/2h
 K8e0en6TmHPWW9OzgikSHpRidAM0WMBxp1OpDE3wqQn2A01kSdVhPpyR/TX5twZn8zgsQFeMv
 AVpIyln9OS9KpsuK+T3zSZtmge4qRv663UYveu28/KEdxOBLTJCdtIGk8cf6uYO2FQ95Cok4I
 zoi/PZdUrgCxItKxd+LcPj+ntp0D7Iet+23K7Do4a9fKNRVX81/01GcRmjFj9kBhbaNq3zgSB
 0f3DXSQoje+FJXJkUxt3TGH0EpNlaiySAnIdz9YVLLz5dTB1TBc5Bn5tZywz9QKxVyN7eCWAg
 HP+/JB6FY6zd9MPjYbE77A50g4ntoDcoCb3+2fZTqSgPZH2ivq6wiWZ2PcUTTMn5URGye2qWt
 ukwBGnxKtJPJkPdfzpHfXqo3R23oVQnc2fVJ+/LyDmuzBGHffZ+6EfhesP9k+ayVUaCzPW0xX
 hmSqAmLgJMibFEHKXFTE//Ps4EpI7S2vRRvjvlBNZTbZTy1AqUb/g8kyJRJ0UyU8F2C56jkfN
 Zj7LRnPykC813bq+JK7Dj8wGma8aDILHJOabhx5RE+Tjw68Mjx2WP+CwK0+lRjajpK+UkrUXI
 AXALhvcd159vwoyDN2z+Ls1F/1fEHwOymLGgqXz503JaJ2aOzHYkSK5YhL7hQFGHy0Ovx5DmP
 Q8JSoBrJKe/uMtULDUyNpnHEcsmlmvWnQ/cz8SP1u1XUuxLiXVXSToJxrzLiShG4CMIp4eqBz
 zvIx6EUxxodLvTGvGG/XIjFhl/MhFoTOck8Rh9uVUvp/Z2bBNg/FbcZgUhOeuysNiLfL9vORl
 jxUgSQKNrv44U5AMB
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_035027_336003_C6109343 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.kiszka[at]web.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Jan Kiszka <jan.kiszka@siemens.com>

No need to look further when that single region is found.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
=2D--
 arch/riscv/mm/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index aec39a56d6cf..a774547e9021 100644
=2D-- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -160,6 +160,8 @@ void __init setup_bootmem(void)
 			if (reg->base + mem_size < end)
 				memblock_remove(reg->base + mem_size,
 						end - reg->base - mem_size);
+
+			break;
 		}
 	}
 	BUG_ON(mem_size =3D=3D 0);
=2D-
2.16.4


